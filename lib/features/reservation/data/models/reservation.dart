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
    /// Heure de passage du car à la gare de montée du client (cf. [heureEmbarquement]).
    DateTime? heurepassage,
    DateTime? datedepartprevue,
    @Default(false) bool bonDisponible,
    String? billetEmis,
    // --- Suivi temps réel « où est mon car » ---
    /// Le car a-t-il quitté son origine (départ réel horodaté) ?
    @Default(false) bool voyageDemarre,
    /// Gare où se trouve actuellement le car ; null tant qu'il n'est pas parti.
    String? positionActuelle,
    /// Retard courant du car en minutes (positif = retard, négatif = avance) ; null si non mesuré.
    int? retardMinutes,
    /// Heure de passage ESTIMÉE chez le client = heure prévue + retard courant.
    DateTime? heurepassageEstimee,
    PaiementInfo? paiement,
  }) = _Reservation;

  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);

  ReservationStatus get status => ReservationStatus.fromApi(statut);
  PaymentStatus get paymentStatus => PaymentStatus.fromApi(etatpaiement);

  bool get isPaid => paymentStatus.isPaid;

  /// Heure à laquelle le client doit être à SA gare : c'est toujours celle-ci qu'on
  /// affiche. Le départ du voyage depuis son origine ne le concerne pas s'il monte
  /// en cours de route. Repli sur ce départ tant que la ligne n'a pas ses durées
  /// d'arrêt renseignées — l'ancien affichage, jamais une heure inventée ici.
  DateTime? get heureEmbarquement => heurepassage ?? datedepartprevue;

  /*
    Une échéance ne s'affiche QUE tant qu'elle est encore à respecter, ce que dit le statut — pas
    'etatpaiement'. Une réservation à régulariser est payée elle aussi : se fier au paiement lui
    faisait afficher « À retirer avant » avec une heure déjà passée. Passé le statut vivant,
    'dateexpiration' n'est plus une consigne mais la trace de l'échéance manquée.
  */
  bool get isAwaitingPayment => status == ReservationStatus.enAttente;

  bool get isConfirmed => status == ReservationStatus.confirmee;

  bool get needsRegularisation => status == ReservationStatus.aRegulariser;

  /// Le paiement est simulé (aucun prestataire réel) → l'app confirme via webhook.
  bool get isSimulatedPayment => paiement?.estSimule ?? false;

  /// Le suivi temps réel n'a de sens qu'une fois le car parti.
  bool get suiviDisponible => voyageDemarre;

  /// Libellé lisible du retard courant, ou null si non mesuré.
  /// Ex. `À l'heure`, `15 min de retard`, `10 min d'avance`.
  String? get retardLabel {
    final r = retardMinutes;
    if (r == null) return null;
    if (r == 0) return "À l'heure";
    return r > 0 ? '$r min de retard' : "${-r} min d'avance";
  }

  /// Le car est-il en retard (au-delà d'une minute) ? Pilote la couleur d'alerte.
  bool get estEnRetard => (retardMinutes ?? 0) > 0;
}
