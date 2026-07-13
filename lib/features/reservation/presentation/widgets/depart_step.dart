import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/formatting/formatters.dart';
import '../../../../core/widgets/app_state_views.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../data/models/depart.dart';
import '../providers/booking_controller.dart';
import '../providers/reservation_providers.dart';

/// Étape 2 — sélection d'un départ daté sur le tronçon choisi.
class DepartStep extends ConsumerWidget {
  const DepartStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bookingControllerProvider);
    final controller = ref.read(bookingControllerProvider.notifier);

    final gareDepart = state.gareDepart;
    final destination = state.destination;
    if (gareDepart == null || destination == null) {
      return const AppEmptyView(message: 'Choisissez d\'abord un trajet.');
    }

    final troncon = (provenance: gareDepart.id, destination: destination.gare.id);
    final departs = ref.watch(departsProvider(troncon));

    return AsyncValueWidget(
      value: departs,
      onRetry: () => ref.invalidate(departsProvider(troncon)),
      data: (list) {
        if (list.isEmpty) {
          return const AppEmptyView(
            icon: Icons.event_busy_outlined,
            message: 'Aucun départ réservable sur ce trajet pour le moment.',
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: list.length,
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemBuilder: (context, i) {
            final depart = list[i];
            return _DepartCard(
              depart: depart,
              selected: state.depart?.voyageId == depart.voyageId,
              onTap: () => controller.selectDepart(depart),
            );
          },
        );
      },
    );
  }
}

class _DepartCard extends StatelessWidget {
  const _DepartCard({
    required this.depart,
    required this.selected,
    required this.onTap,
  });

  final Depart depart;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      color: selected ? scheme.primaryContainer : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: selected ? scheme.primary : scheme.outlineVariant,
          width: selected ? 1.5 : 1,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                selected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: selected ? scheme.primary : scheme.outline,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Formatters.dateTime(depart.datedepartprevue),
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.event_seat_outlined,
                            size: 15, color: scheme.onSurfaceVariant),
                        const SizedBox(width: 4),
                        Text(
                          '${depart.placesDisponibles} place(s) · ${depart.codevoyage ?? ''}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                Formatters.money(depart.montant),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: scheme.primary,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
