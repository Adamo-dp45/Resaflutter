import '../../data/models/compagnie.dart';
import '../../data/models/create_reservation_request.dart';
import '../../data/models/depart.dart';
import '../../data/models/destination.dart';
import '../../data/models/gare.dart';
import '../../data/models/reservation.dart';
import '../../data/models/ville.dart';

/// Contrat d'accès aux données de réservation (agnostique du transport).
///
/// La présentation dépend de cette interface, jamais de Dio : on peut ainsi
/// substituer une implémentation de test/mock sans toucher à l'UI.
abstract interface class ReservationRepository {
  Future<Compagnie> getCompagnie();

  Future<List<Ville>> getVilles();

  Future<List<Gare>> getGares(int villeId);

  Future<List<Destination>> getDestinations(int gareId);

  Future<List<Depart>> getDeparts({
    required int provenance,
    required int destination,
  });

  Future<Reservation> createReservation(CreateReservationRequest request);

  /// Confirme le paiement (webhook). En simulation, appelé par l'app elle-même.
  Future<void> confirmPayment({
    required String reference,
    String status = 'SUCCESS',
  });

  Future<Reservation> track({required String code, required String contact});

  Future<List<Reservation>> history({required String contact});
}
