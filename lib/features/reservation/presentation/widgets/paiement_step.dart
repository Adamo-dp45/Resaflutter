import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/formatting/formatters.dart';
import '../providers/booking_controller.dart';

/// Étape 4 — paiement de la réservation créée.
///
/// Le prestataire réel n'est pas encore branché : le paiement est SIMULÉ
/// (`estSimule`). L'action « Payer » (barre du bas) déclenche le webhook puis
/// rafraîchit la réservation.
class PaiementStep extends ConsumerWidget {
  const PaiementStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reservation = ref.watch(
      bookingControllerProvider.select((s) => s.reservation),
    );
    final scheme = Theme.of(context).colorScheme;

    if (reservation == null) {
      return const Center(child: Text('Aucune réservation à payer.'));
    }

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Icon(Icons.account_balance_wallet_outlined,
            size: 56, color: scheme.primary),
        const SizedBox(height: 16),
        Text(
          'Réservation ${reservation.code}',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          'Montant à payer',
          textAlign: TextAlign.center,
          style: TextStyle(color: scheme.onSurfaceVariant),
        ),
        Text(
          Formatters.money(reservation.montant),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: scheme.primary,
              ),
        ),
        const SizedBox(height: 24),
        Card(
          color: scheme.tertiaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(Icons.info_outline, color: scheme.onTertiaryContainer),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    reservation.isSimulatedPayment
                        ? 'Paiement Mobile Money simulé pour la démo. En production, vous serez redirigé vers le prestataire.'
                        : 'Vous allez être redirigé vers votre prestataire de paiement.',
                    style: TextStyle(color: scheme.onTertiaryContainer),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        if (reservation.dateexpiration != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.timer_outlined, size: 16, color: scheme.outline),
              const SizedBox(width: 6),
              Text(
                'À payer avant le ${Formatters.dateTime(reservation.dateexpiration)}',
                style: TextStyle(color: scheme.outline),
              ),
            ],
          ),
      ],
    );
  }
}
