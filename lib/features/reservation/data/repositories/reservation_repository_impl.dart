import '../../domain/repositories/reservation_repository.dart';
import '../datasources/reservation_remote_datasource.dart';
import '../models/compagnie.dart';
import '../models/create_reservation_request.dart';
import '../models/depart.dart';
import '../models/destination.dart';
import '../models/gare.dart';
import '../models/reservation.dart';
import '../models/ville.dart';

/// Implémentation par défaut : délègue à la source distante (API publique).
///
/// Point d'extension naturel pour un cache local, une file hors-ligne, etc.
class ReservationRepositoryImpl implements ReservationRepository {
  ReservationRepositoryImpl(this._remote);

  final ReservationRemoteDataSource _remote;

  @override
  Future<Compagnie> getCompagnie() => _remote.getCompagnie();

  @override
  Future<List<Ville>> getVilles() => _remote.getVilles();

  @override
  Future<List<Gare>> getGares(int villeId) => _remote.getGares(villeId);

  @override
  Future<List<Destination>> getDestinations(int gareId) =>
      _remote.getDestinations(gareId);

  @override
  Future<List<Depart>> getDeparts({
    required int provenance,
    required int destination,
  }) =>
      _remote.getDeparts(provenance: provenance, destination: destination);

  @override
  Future<Reservation> createReservation(CreateReservationRequest request) =>
      _remote.createReservation(request);

  @override
  Future<void> confirmPayment({
    required String reference,
    String status = 'SUCCESS',
  }) =>
      _remote.confirmPayment(reference: reference, status: status);

  @override
  Future<Reservation> track({
    required String code,
    required String contact,
  }) =>
      _remote.track(code: code, contact: contact);

  @override
  Future<List<Reservation>> history({required String contact}) =>
      _remote.history(contact: contact);
}
