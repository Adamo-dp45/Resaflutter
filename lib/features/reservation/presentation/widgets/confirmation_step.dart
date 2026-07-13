import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/formatting/formatters.dart';
import '../../../../core/router/app_router.dart';
import '../providers/booking_controller.dart';
import 'download_voucher_button.dart';
import 'status_chip.dart';

/// Étape finale — réservation payée : le « bon » (code) à présenter à la gare.
class ConfirmationStep extends ConsumerWidget {
  const ConfirmationStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservation = ref.watch(
      bookingControllerProvider.select((s) => s.reservation),
    );
    final scheme = Theme.of(context).colorScheme;

    if (reservation == null) {
      return const Center(child: Text('—'));
    }

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(height: 12),
        Icon(Icons.check_circle, size: 72, color: scheme.primary),
        const SizedBox(height: 12),
        Text(
          'Réservation confirmée',
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          'Présentez ce code à la gare pour retirer votre billet.',
          textAlign: TextAlign.center,
          style: TextStyle(color: scheme.onSurfaceVariant),
        ),
        const SizedBox(height: 24),
        Card(
          color: scheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              children: [
                Text(
                  'Votre bon',
                  style: TextStyle(color: scheme.onPrimaryContainer),
                ),
                const SizedBox(height: 8),
                SelectableText(
                  reservation.code,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: scheme.onPrimaryContainer,
                  ),
                ),
                const SizedBox(height: 8),
                TextButton.icon(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: reservation.code));
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text('Code copié')));
                  },
                  icon: const Icon(Icons.copy, size: 18),
                  label: const Text('Copier'),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: StatusChip(reservation: reservation),
                ),
                const SizedBox(height: 12),
                _line(
                  context,
                  'Trajet',
                  '${reservation.montee ?? '—'} → ${reservation.descente ?? '—'}',
                ),
                _line(
                  context,
                  'Départ',
                  Formatters.dateTime(reservation.datedepartprevue),
                ),
                _line(
                  context,
                  'Montant',
                  Formatters.money(reservation.montant),
                ),
                _line(context, 'Passager', reservation.nomclient ?? '—'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        DownloadVoucherButton(reservation: reservation),
        const SizedBox(height: 12),
        FilledButton.icon(
          onPressed: () {
            ref.read(bookingControllerProvider.notifier).reset();
            context.go(AppRoutes.home);
          },
          icon: const Icon(Icons.home_outlined),
          label: const Text('Terminer'),
        ),
      ],
    );
  }

  Widget _line(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: Text(
              label,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
