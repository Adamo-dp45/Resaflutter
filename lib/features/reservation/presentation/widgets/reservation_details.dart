import 'package:flutter/material.dart';

import '../../../../core/formatting/formatters.dart';
import '../../data/models/reservation.dart';
import 'download_voucher_button.dart';
import 'status_chip.dart';

/// Carte de détail d'une réservation (réutilisée par le suivi et l'historique).
class ReservationDetails extends StatelessWidget {
  const ReservationDetails({super.key, required this.reservation});

  final Reservation reservation;

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
                  Formatters.dateTime(reservation.datedepartprevue),
                ),
                _line(
                  context,
                  'Montant',
                  Formatters.money(reservation.montant),
                ),
                if (reservation.nomclient != null)
                  _line(context, 'Passager', reservation.nomclient!),
                if (!reservation.isPaid && reservation.dateexpiration != null)
                  _line(
                    context,
                    'À payer avant',
                    Formatters.dateTime(reservation.dateexpiration),
                  ),
                if (reservation.billetEmis != null)
                  _line(context, 'Billet', reservation.billetEmis!),
              ],
            ),
          ),
        ),
        if (reservation.isPaid) ...[
          const SizedBox(height: 12),
          DownloadVoucherButton(reservation: reservation),
        ],
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
