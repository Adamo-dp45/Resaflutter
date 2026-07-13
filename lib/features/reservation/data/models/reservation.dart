import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/reservation_status.dart';
import 'paiement_info.dart';

part 'reservation.freezed.dart';
part 'reservation.g.dart';

/// Réservation invité telle que renvoyée par l'API (`/reservation/reservations`,
/// `/reservation/suivi`, `/reservation/historique`).
///
/// `statut` / `etatpaiement` restent les chaînes brutes de l'API ; les getters
/// [status] / [paymentStatus] fournissent les enums typés côté UI.
@freezed
abstract class Reservation with _$Reservation {
  const Reservation._();

  const factory Reservation({
    required String code,
    required String statut,
    required String etatpaiement,
    String? nomclient,
    String? contactclient,
    int? montant,
    DateTime? dateexpiration,
    String? montee,
    String? descente,
    String? codevoyage,
    DateTime? datedepartprevue,
    @Default(false) bool bonDisponible,
    String? billetEmis,
    PaiementInfo? paiement,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);

  ReservationStatus get status => ReservationStatus.fromApi(statut);
  PaymentStatus get paymentStatus => PaymentStatus.fromApi(etatpaiement);

  bool get isPaid => paymentStatus.isPaid;

  /// Le paiement est simulé (aucun prestataire réel) → l'app confirme via webhook.
  bool get isSimulatedPayment => paiement?.estSimule ?? false;
}
