import 'package:dio/dio.dart';

import '../../../../core/config/app_config.dart';
import '../../../../core/network/api_exception.dart';
import '../models/compagnie.dart';
import '../models/create_reservation_request.dart';
import '../models/depart.dart';
import '../models/destination.dart';
import '../models/gare.dart';
import '../models/reservation.dart';
import '../models/ville.dart';

/// Accès HTTP brut à l'API publique de réservation (API Platform, `?slug=`).
///
/// Ne fait QUE l'appel réseau + le mapping JSON ; toute [DioException] est
/// convertie en [ApiException] pour isoler la couche supérieure de Dio.
class ReservationRemoteDataSource {
  ReservationRemoteDataSource(this._dio);

  final Dio _dio;

  static const _prefix = AppConfig.reservationApiPrefix;

  Future<Compagnie> getCompagnie() => _getObject(
        '$_prefix/compagnie',
        Compagnie.fromJson,
      );

  Future<List<Ville>> getVilles() => _getList(
        '$_prefix/villes',
        Ville.fromJson,
      );

  Future<List<Gare>> getGares(int villeId) => _getList(
        '$_prefix/gares',
        Gare.fromJson,
        query: {'ville': villeId},
      );

  Future<List<Destination>> getDestinations(int gareId) => _getList(
        '$_prefix/destinations',
        Destination.fromJson,
        query: {'gare': gareId},
      );

  Future<List<Depart>> getDeparts({
    required int provenance,
    required int destination,
  }) =>
      _getList(
        '$_prefix/departs',
        Depart.fromJson,
        query: {'provenance': provenance, 'destination': destination},
      );

  Future<Reservation> createReservation(CreateReservationRequest request) =>
      _post(
        '$_prefix/reservations',
        request.toJson(),
        Reservation.fromJson,
      );

  Future<void> confirmPayment({
    required String reference,
    String status = 'SUCCESS',
  }) async {
    try {
      await _dio.post(
        '$_prefix/paiement/webhook',
        data: {'reference': reference, 'status': status},
      );
    } on DioException catch (e) {
      throw ApiException.fromDio(e);
    }
  }

  Future<Reservation> track({
    required String code,
    required String contact,
  }) =>
      _getObject(
        '$_prefix/suivi',
        Reservation.fromJson,
        query: {'code': code, 'contact': contact},
      );

  Future<List<Reservation>> history({required String contact}) => _getList(
        '$_prefix/historique',
        Reservation.fromJson,
        query: {'contact': contact},
      );

  // -- Helpers génériques -- //

  Future<T> _getObject<T>(
    String path,
    T Function(Map<String, dynamic>) fromJson, {
    Map<String, dynamic>? query,
  }) async {
    try {
      final res = await _dio.get(path, queryParameters: query);
      return fromJson(_asMap(res.data));
    } on DioException catch (e) {
      throw ApiException.fromDio(e);
    }
  }

  Future<List<T>> _getList<T>(
    String path,
    T Function(Map<String, dynamic>) fromJson, {
    Map<String, dynamic>? query,
  }) async {
    try {
      final res = await _dio.get(path, queryParameters: query);
      return _asList(res.data).map((e) => fromJson(_asMap(e))).toList();
    } on DioException catch (e) {
      throw ApiException.fromDio(e);
    }
  }

  Future<T> _post<T>(
    String path,
    Map<String, dynamic> body,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    try {
      final res = await _dio.post(path, data: body);
      return fromJson(_asMap(res.data));
    } on DioException catch (e) {
      throw ApiException.fromDio(e);
    }
  }

  Map<String, dynamic> _asMap(dynamic data) {
    if (data is Map<String, dynamic>) return data;
    // Tolérance JSON-LD : si un wrapper Hydra remontait, on prendrait `member`.
    throw const ApiException('Réponse inattendue du serveur.');
  }

  List<dynamic> _asList(dynamic data) {
    if (data is List) return data;
    // Repli JSON-LD : collection encapsulée (`member` / `hydra:member`).
    if (data is Map) {
      final member = data['member'] ?? data['hydra:member'];
      if (member is List) return member;
    }
    throw const ApiException('Réponse inattendue du serveur.');
  }
}
