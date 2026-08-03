import 'package:flutter/material.dart';

import '../../../../core/formatting/formatters.dart';
import '../../data/models/reservation.dart';
import 'download_voucher_button.dart';
import 'status_chip.dart';

/// Carte de détail d'une réservation (réutilisée par le suivi et l'historique).
class ReservationDetails extends StatelessWidget {
  const ReservationDetails({
    super.key,
    required this.reservation,
    this.showTracking = false,
  });

  final Reservation reservation;

  /// Affiche le bloc « où est mon car » (position + retard). Réservé au suivi :
  /// inutile sur l'historique, où le voyage est terminé.
  final bool showTracking;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      reservation.code,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    StatusChip(reservation: reservation),
                  ],
                ),
                const Divider(height: 20),
                _line(
                  context,
                  'Trajet',
                  '${reservation.montee ?? '—'} → ${reservation.descente ?? '—'}',
                ),
                _line(
                  context,
                  'Départ',
                  Formatters.dateTime(reservation.heureEmbarquement),
                ),
                _line(
                  context,
                  'Montant',
                  Formatters.money(reservation.montant),
                ),
                if (reservation.nomclient != null)
                  _line(context, 'Passager', reservation.nomclient!),
                if (reservation.isAwaitingPayment &&
                    reservation.dateexpiration != null)
                  _line(
                    context,
                    'À payer avant',
                    Formatters.dateTime(reservation.dateexpiration),
                  ),
                // Une fois payée, 'dateexpiration' ne porte plus la limite de paiement mais celle de
                // PRÉSENTATION au guichet : au-delà, la place n'est plus tenue et la réservation
                // devient un no-show à régulariser. Le client doit donc la voir tant qu'elle court —
                // d'où le statut CONFIRMEE et non 'payée', qui vaut aussi pour une réservation déjà
                // passée en A_REGULARISER. Plus d'échéance dès que le billet est émis : honorée.
                if (reservation.isConfirmed &&
                    reservation.billetEmis == null &&
                    reservation.dateexpiration != null)
                  _line(
                    context,
                    'À retirer avant',
                    Formatters.dateTime(reservation.dateexpiration),
                  ),
                if (reservation.billetEmis != null)
                  _line(context, 'Billet', reservation.billetEmis!),
                // Départ manqué : le client a besoin de la marche à suivre, pas d'une date dépassée.
                if (reservation.needsRegularisation)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Départ manqué. Votre place n\'est pas perdue : présentez-vous en gare '
                      'pour la reporter sur un prochain départ.',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        if (showTracking && reservation.suiviDisponible) ...[
          const SizedBox(height: 12),
          _trackingCard(context),
        ],
        if (reservation.isPaid) ...[
          const SizedBox(height: 12),
          DownloadVoucherButton(reservation: reservation),
        ],
      ],
    );
  }

  /// « Où est mon car » : position courante + retard estimé + heure de passage révisée.
  Widget _trackingCard(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final enRetard = reservation.estEnRetard;
    final retard = reservation.retardLabel;
    // Vert = à l'heure/avance, orange (tertiary) = retard.
    final accent = retard == null
        ? scheme.onSurfaceVariant
        : (enRetard ? scheme.tertiary : scheme.primary);

    return Card(
      color: scheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.directions_bus_outlined, size: 20, color: accent),
                const SizedBox(width: 8),
                Text(
                  'Suivi du car',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(height: 20),
            _line(
              context,
              'Position',
              reservation.positionActuelle ?? 'En route',
            ),
            if (retard != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'État',
                        style: TextStyle(color: scheme.onSurfaceVariant),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        retard,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: accent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            // Heure à laquelle le car est désormais attendu chez CE client (prévue + retard).
            if (reservation.heurepassageEstimee != null)
              _line(
                context,
                'Passage estimé',
                Formatters.dateTime(reservation.heurepassageEstimee),
              ),
          ],
        ),
      ),
    );
  }

  Widget _line(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
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
