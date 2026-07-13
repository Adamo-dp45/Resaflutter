import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/network/api_exception.dart';
import '../../data/models/create_reservation_request.dart';
import '../../data/models/depart.dart';
import '../../data/models/destination.dart';
import '../../data/models/gare.dart';
import '../../data/models/reservation.dart';
import '../../data/models/ville.dart';
import '../../domain/repositories/reservation_repository.dart';
import 'reservation_providers.dart';

part 'booking_controller.freezed.dart';

/// Étapes du tunnel de réservation.
enum BookingStep { troncon, depart, passager, paiement, termine }

/// État immuable du tunnel de réservation, partagé par toutes les étapes.
@freezed
abstract class BookingState with _$BookingState {
  const BookingState._();

  const factory BookingState({
    @Default(BookingStep.troncon) BookingStep step,
    Ville? villeDepart,
    Gare? gareDepart,
    Destination? destination,
    Depart? depart,
    @Default('') String nom,
    @Default('') String contact,
    Reservation? reservation,
    @Default(false) bool submitting,
    String? error,
  }) = _BookingState;

  bool get tronconComplet =>
      gareDepart != null && destination != null;

  bool get passagerComplet =>
      nom.trim().length >= 2 && contact.trim().length >= 6;

  /// Montant du trajet (tarif de la destination, ou prix figé du départ choisi).
  int? get montant => depart?.montant ?? destination?.montant;
}

/// Pilote le tunnel : sélection du tronçon → départ → passager → paiement.
///
/// Tout l'état de progression vit ici (et non dans les pages), ce qui permet de
/// naviguer entre écrans sans perdre le contexte et de tester la logique isolément.
class BookingController extends Notifier<BookingState> {
  @override
  BookingState build() => const BookingState();

  ReservationRepository get _repo =>
      ref.read(reservationRepositoryProvider);

  // -- Étape 1 : tronçon -- //

  void selectVilleDepart(Ville? ville) {
    if (ville?.id == state.villeDepart?.id) return;
    state = state.copyWith(
      villeDepart: ville,
      gareDepart: null,
      destination: null,
      depart: null,
      error: null,
    );
  }

  void selectGareDepart(Gare? gare) {
    if (gare?.id == state.gareDepart?.id) return;
    state = state.copyWith(
      gareDepart: gare,
      destination: null,
      depart: null,
      error: null,
    );
  }

  void selectDestination(Destination? destination) {
    state = state.copyWith(
      destination: destination,
      depart: null,
      error: null,
    );
  }

  // -- Étape 2 : départ -- //

  void selectDepart(Depart depart) {
    state = state.copyWith(depart: depart, error: null);
  }

  // -- Étape 3 : passager -- //

  void setPassenger({required String nom, required String contact}) {
    state = state.copyWith(nom: nom, contact: contact, error: null);
  }

  // -- Navigation entre étapes -- //

  void goTo(BookingStep step) => state = state.copyWith(step: step, error: null);

  void back() {
    const order = BookingStep.values;
    final index = order.indexOf(state.step);
    if (index > 0) goTo(order[index - 1]);
  }

  // -- Actions distantes -- //

  /// Crée la réservation puis passe à l'étape paiement.
  Future<void> submitReservation() async {
    final gare = state.gareDepart;
    final destination = state.destination;
    final depart = state.depart;
    if (gare == null || destination == null || depart == null) return;

    state = state.copyWith(submitting: true, error: null);
    try {
      final reservation = await _repo.createReservation(
        CreateReservationRequest(
          nom: state.nom.trim(),
          contact: state.contact.trim(),
          voyage: depart.voyageId,
          montee: gare.id,
          descente: destination.gare.id,
        ),
      );
      state = state.copyWith(
        reservation: reservation,
        submitting: false,
        step: BookingStep.paiement,
      );
    } on ApiException catch (e) {
      state = state.copyWith(submitting: false, error: e.message);
    }
  }

  /// Confirme le paiement (simulé : webhook déclenché par l'app), puis rafraîchit
  /// la réservation. Passe à l'étape finale une fois payée.
  Future<void> pay() async {
    final reservation = state.reservation;
    final reference = reservation?.paiement?.reference;
    if (reservation == null || reference == null) return;

    state = state.copyWith(submitting: true, error: null);
    try {
      await _repo.confirmPayment(reference: reference);
      final refreshed = await _repo.track(
        code: reservation.code,
        contact: state.contact.trim(),
      );
      state = state.copyWith(
        reservation: refreshed,
        submitting: false,
        step: refreshed.isPaid ? BookingStep.termine : state.step,
        error: refreshed.isPaid
            ? null
            : 'Le paiement n\'a pas été confirmé. Réessayez.',
      );
    } on ApiException catch (e) {
      state = state.copyWith(submitting: false, error: e.message);
    }
  }

  /// Repart d'un tunnel vierge (nouvelle réservation).
  void reset() => state = const BookingState();
}

final bookingControllerProvider =
    NotifierProvider<BookingController, BookingState>(BookingController.new);
