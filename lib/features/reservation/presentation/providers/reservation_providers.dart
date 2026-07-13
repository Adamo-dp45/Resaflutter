import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_client.dart';
import '../../data/datasources/reservation_remote_datasource.dart';
import '../../data/models/compagnie.dart';
import '../../data/models/depart.dart';
import '../../data/models/destination.dart';
import '../../data/models/gare.dart';
import '../../data/models/reservation.dart';
import '../../data/models/ville.dart';
import '../../data/repositories/reservation_repository_impl.dart';
import '../../domain/repositories/reservation_repository.dart';

// -- Injection de dépendances -- //

final dioProvider = Provider<Dio>((ref) {
  final dio = createDio();
  ref.onDispose(dio.close);
  return dio;
});

final _remoteDataSourceProvider = Provider<ReservationRemoteDataSource>((ref) {
  return ReservationRemoteDataSource(ref.watch(dioProvider));
});

final reservationRepositoryProvider = Provider<ReservationRepository>((ref) {
  return ReservationRepositoryImpl(ref.watch(_remoteDataSourceProvider));
});

// -- Données (lecture) -- //

/// Branding de la compagnie (chargé au démarrage).
final compagnieProvider = FutureProvider<Compagnie>((ref) {
  return ref.watch(reservationRepositoryProvider).getCompagnie();
});

/// Villes desservies.
final villesProvider = FutureProvider<List<Ville>>((ref) {
  return ref.watch(reservationRepositoryProvider).getVilles();
});

/// Gares d'une ville.
final garesProvider = FutureProvider.family<List<Gare>, int>((ref, villeId) {
  return ref.watch(reservationRepositoryProvider).getGares(villeId);
});

/// Destinations accessibles depuis une gare (avec tarif).
final destinationsProvider =
    FutureProvider.family<List<Destination>, int>((ref, gareId) {
  return ref.watch(reservationRepositoryProvider).getDestinations(gareId);
});

/// Argument du tronçon pour la recherche des départs.
typedef TronconRef = ({int provenance, int destination});

/// Départs réservables sur un tronçon.
final departsProvider =
    FutureProvider.family<List<Depart>, TronconRef>((ref, troncon) {
  return ref.watch(reservationRepositoryProvider).getDeparts(
        provenance: troncon.provenance,
        destination: troncon.destination,
      );
});

/// Argument du suivi d'une réservation.
typedef SuiviRef = ({String code, String contact});

/// Suivi d'une réservation par code + téléphone.
final suiviProvider =
    FutureProvider.family<Reservation, SuiviRef>((ref, args) {
  return ref
      .watch(reservationRepositoryProvider)
      .track(code: args.code, contact: args.contact);
});

/// Historique des réservations d'un client (par téléphone).
final historiqueProvider =
    FutureProvider.family<List<Reservation>, String>((ref, contact) {
  return ref.watch(reservationRepositoryProvider).history(contact: contact);
});
