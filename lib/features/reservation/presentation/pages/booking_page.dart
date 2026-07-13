import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/formatting/formatters.dart';
import '../providers/booking_controller.dart';
import '../widgets/confirmation_step.dart';
import '../widgets/depart_step.dart';
import '../widgets/paiement_step.dart';
import '../widgets/passager_step.dart';
import '../widgets/troncon_step.dart';

/// Tunnel de réservation : orchestre les étapes (tronçon → départ → passager →
/// paiement → confirmation) au-dessus de [bookingControllerProvider].
class BookingPage extends ConsumerWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bookingControllerProvider);
    final controller = ref.read(bookingControllerProvider.notifier);

    // Remonte les erreurs distantes en SnackBar.
    ref.listen(
      bookingControllerProvider.select((s) => s.error),
      (previous, next) {
        if (next != null) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(SnackBar(content: Text(next)));
        }
      },
    );

    final canPop =
        state.step == BookingStep.troncon || state.step == BookingStep.termine;

    return PopScope(
      canPop: canPop,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) controller.back();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(_titleFor(state.step)),
          bottom: state.step == BookingStep.termine
              ? null
              : _ProgressBar(step: state.step),
        ),
        body: SafeArea(child: _bodyFor(state.step)),
        bottomNavigationBar: _BottomBar(state: state, controller: controller),
      ),
    );
  }

  String _titleFor(BookingStep step) => switch (step) {
        BookingStep.troncon => 'Votre trajet',
        BookingStep.depart => 'Choisir un départ',
        BookingStep.passager => 'Vos informations',
        BookingStep.paiement => 'Paiement',
        BookingStep.termine => 'Confirmation',
      };

  Widget _bodyFor(BookingStep step) => switch (step) {
        BookingStep.troncon => const TronconStep(),
        BookingStep.depart => const DepartStep(),
        BookingStep.passager => const PassagerStep(),
        BookingStep.paiement => const PaiementStep(),
        BookingStep.termine => const ConfirmationStep(),
      };
}

/// Fine barre de progression (4 étapes avant la confirmation).
class _ProgressBar extends StatelessWidget implements PreferredSizeWidget {
  const _ProgressBar({required this.step});

  final BookingStep step;

  @override
  Size get preferredSize => const Size.fromHeight(4);

  @override
  Widget build(BuildContext context) {
    const total = 4; // troncon, depart, passager, paiement
    final current = BookingStep.values.indexOf(step) + 1;
    return LinearProgressIndicator(value: current / total, minHeight: 4);
  }
}

/// Barre d'action inférieure, contextualisée par l'étape courante.
class _BottomBar extends StatelessWidget {
  const _BottomBar({required this.state, required this.controller});

  final BookingState state;
  final BookingController controller;

  @override
  Widget build(BuildContext context) {
    if (state.step == BookingStep.termine) {
      return const SizedBox.shrink();
    }

    final (label, onPressed) = _action(context);

    return SafeArea(
      minimum: const EdgeInsets.all(16),
      child: FilledButton(
        onPressed: state.submitting ? null : onPressed,
        child: state.submitting
            ? const SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(strokeWidth: 2.4),
              )
            : Text(label),
      ),
    );
  }

  (String, VoidCallback?) _action(BuildContext context) {
    switch (state.step) {
      case BookingStep.troncon:
        return (
          'Continuer',
          state.tronconComplet
              ? () => controller.goTo(BookingStep.depart)
              : null,
        );
      case BookingStep.depart:
        return (
          'Continuer',
          state.depart != null
              ? () => controller.goTo(BookingStep.passager)
              : null,
        );
      case BookingStep.passager:
        return (
          'Réserver ma place',
          state.passagerComplet ? controller.submitReservation : null,
        );
      case BookingStep.paiement:
        return ('Payer ${Formatters.money(state.montant)}', controller.pay);
      case BookingStep.termine:
        return ('', null);
    }
  }
}
