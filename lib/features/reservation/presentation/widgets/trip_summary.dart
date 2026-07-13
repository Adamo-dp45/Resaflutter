import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/formatting/formatters.dart';
import '../providers/booking_controller.dart';

/// Récapitulatif du trajet en cours de réservation (trajet, départ, montant).
class TripSummary extends ConsumerWidget {
  const TripSummary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bookingControllerProvider);
    final scheme = Theme.of(context).colorScheme;

    return Card(
      color: scheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.route_outlined, color: scheme.primary, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    '${state.gareDepart?.libelle ?? '—'} → ${state.destination?.gare.libelle ?? '—'}',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const Divider(height: 20),
            _row(context, Icons.schedule,
                Formatters.dateTime(state.depart?.datedepartprevue)),
            const SizedBox(height: 8),
            _row(
              context,
              Icons.payments_outlined,
              Formatters.money(state.montant),
              emphasize: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _row(BuildContext context, IconData icon, String text,
      {bool emphasize = false}) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Icon(icon, size: 18, color: scheme.onSurfaceVariant),
        const SizedBox(width: 8),
        Text(
          text,
          style: emphasize
              ? Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: scheme.primary,
                  )
              : Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
