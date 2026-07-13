import 'package:flutter/material.dart';

import '../../data/models/reservation.dart';
import '../../domain/reservation_status.dart';

/// Puce colorée résumant l'état d'une réservation (statut + paiement).
class StatusChip extends StatelessWidget {
  const StatusChip({super.key, required this.reservation});

  final Reservation reservation;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final (label, color) = _resolve(scheme);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: TextStyle(color: color, fontWeight: FontWeight.w600),
      ),
    );
  }

  (String, Color) _resolve(ColorScheme scheme) {
    // Le paiement prime visuellement (c'est ce qui débloque le bon).
    if (reservation.isPaid) {
      return (
        reservation.billetEmis != null ? 'Billet émis' : 'Payé',
        const Color(0xFF1B873F),
      );
    }
    return switch (reservation.status) {
      ReservationStatus.enAttente => ('En attente de paiement', scheme.tertiary),
      ReservationStatus.aRegulariser => ('À régulariser', const Color(0xFFB26A00)),
      ReservationStatus.expiree => ('Expirée', scheme.error),
      ReservationStatus.annulee => ('Annulée', scheme.error),
      ReservationStatus.confirmee => ('Confirmée', const Color(0xFF1B873F)),
      _ => (reservation.statut, scheme.outline),
    };
  }
}
