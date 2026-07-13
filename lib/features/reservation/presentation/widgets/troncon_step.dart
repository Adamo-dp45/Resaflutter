import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/formatting/formatters.dart';
import '../../../../core/widgets/labeled_dropdown.dart';
import '../../data/models/destination.dart';
import '../../data/models/gare.dart';
import '../../data/models/ville.dart';
import '../providers/booking_controller.dart';
import '../providers/reservation_providers.dart';

/// Étape 1 — choix du trajet : ville & gare de départ, puis destination.
class TronconStep extends ConsumerWidget {
  const TronconStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bookingControllerProvider);
    final controller = ref.read(bookingControllerProvider.notifier);

    final villes = ref.watch(villesProvider);
    final gares = state.villeDepart == null
        ? const AsyncValue<List<Gare>>.data([])
        : ref.watch(garesProvider(state.villeDepart!.id));
    final destinations = state.gareDepart == null
        ? const AsyncValue<List<Destination>>.data([])
        : ref.watch(destinationsProvider(state.gareDepart!.id));

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text('D\'où partez-vous ?',
            style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 16),

        // Ville de départ
        LabeledDropdown<int>(
          label: 'Ville de départ',
          icon: Icons.location_city_outlined,
          loading: villes.isLoading,
          hint: 'Choisir une ville',
          value: state.villeDepart?.id,
          items: [
            for (final v in villes.asData?.value ?? const <Ville>[])
              DropdownMenuItem(value: v.id, child: Text(v.nom)),
          ],
          onChanged: (id) {
            final list = villes.asData?.value ?? const <Ville>[];
            controller.selectVilleDepart(
              list.where((v) => v.id == id).firstOrNull,
            );
          },
        ),
        if (villes.hasError)
          _InlineError(onRetry: () => ref.invalidate(villesProvider)),
        const SizedBox(height: 16),

        // Gare de départ
        LabeledDropdown<int>(
          label: 'Gare de départ',
          icon: Icons.directions_bus_outlined,
          loading: gares.isLoading,
          hint: state.villeDepart == null
              ? 'Choisissez d\'abord une ville'
              : 'Choisir une gare',
          value: state.gareDepart?.id,
          items: [
            for (final g in gares.asData?.value ?? const <Gare>[])
              DropdownMenuItem(value: g.id, child: Text(g.libelle)),
          ],
          onChanged: state.villeDepart == null
              ? null
              : (id) {
                  final list = gares.asData?.value ?? const <Gare>[];
                  controller.selectGareDepart(
                    list.where((g) => g.id == id).firstOrNull,
                  );
                },
        ),
        const SizedBox(height: 24),

        Text('Où allez-vous ?',
            style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 16),

        // Destination (+ tarif)
        LabeledDropdown<int>(
          label: 'Destination',
          icon: Icons.flag_outlined,
          loading: destinations.isLoading,
          hint: state.gareDepart == null
              ? 'Choisissez d\'abord une gare'
              : 'Choisir une destination',
          value: state.destination?.gare.id,
          items: [
            for (final d in destinations.asData?.value ?? const <Destination>[])
              DropdownMenuItem(
                value: d.gare.id,
                child: Text('${d.gare.libelle} · ${Formatters.money(d.montant)}'),
              ),
          ],
          onChanged: state.gareDepart == null
              ? null
              : (id) {
                  final list =
                      destinations.asData?.value ?? const <Destination>[];
                  controller.selectDestination(
                    list.where((d) => d.gare.id == id).firstOrNull,
                  );
                },
        ),
        if (destinations.hasValue &&
            (destinations.asData?.value ?? const []).isEmpty &&
            state.gareDepart != null)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              'Aucune destination desservie depuis cette gare.',
              style: TextStyle(color: Theme.of(context).colorScheme.outline),
            ),
          ),
      ],
    );
  }
}

class _InlineError extends StatelessWidget {
  const _InlineError({required this.onRetry});
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Icon(Icons.error_outline,
              size: 18, color: Theme.of(context).colorScheme.error),
          const SizedBox(width: 8),
          const Expanded(child: Text('Chargement impossible.')),
          TextButton(onPressed: onRetry, child: const Text('Réessayer')),
        ],
      ),
    );
  }
}
