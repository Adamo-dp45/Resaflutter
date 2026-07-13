import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../providers/booking_controller.dart';
import '../providers/reservation_providers.dart';

/// Écran d'accueil : branding de la compagnie + points d'entrée
/// (réserver / suivre / historique).
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final compagnie = ref.watch(compagnieProvider);
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: AsyncValueWidget(
          value: compagnie,
          onRetry: () => ref.invalidate(compagnieProvider),
          data: (c) => Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 24),
                CircleAvatar(
                  radius: 36,
                  backgroundColor: theme.colorScheme.primaryContainer,
                  child: Text(
                    (c.sigle ?? c.libelle ?? '?').characters.first.toUpperCase(),
                    style: theme.textTheme.headlineMedium?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  c.libelle ?? 'Réservation',
                  style: theme.textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  'Réservez votre place en quelques secondes',
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                FilledButton.icon(
                  onPressed: () {
                    ref.read(bookingControllerProvider.notifier).reset();
                    context.push(AppRoutes.booking);
                  },
                  icon: const Icon(Icons.directions_bus_filled),
                  label: const Text('Réserver un trajet'),
                ),
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: () => context.push(AppRoutes.track),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(52),
                  ),
                  icon: const Icon(Icons.confirmation_number_outlined),
                  label: const Text('Suivre une réservation'),
                ),
                const SizedBox(height: 12),
                TextButton.icon(
                  onPressed: () => context.push(AppRoutes.history),
                  icon: const Icon(Icons.history),
                  label: const Text('Mes réservations'),
                ),
                const SizedBox(height: 8),
                Text(
                  '${c.contact ?? ''}${c.contact != null && c.siteweb != null ? ' · ' : ''}${c.siteweb ?? ''}',
                  style: theme.textTheme.bodySmall
                      ?.copyWith(color: theme.colorScheme.outline),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Compagnie : ${AppConfig.companySlug}',
                  style: theme.textTheme.labelSmall
                      ?.copyWith(color: theme.colorScheme.outlineVariant),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
