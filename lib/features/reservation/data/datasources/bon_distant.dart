import 'dart:typed_data';

import 'package:dio/dio.dart';

import '../../../../core/config/app_config.dart';

/// LE BON DE RÉSERVATION VIENT DU SERVEUR (20/10/2026).
///
/// Il était composé ici, en Dart, pendant que `resanative` le composait en HTML : deux maquettes
/// écrites séparément pour un seul papier — celui que le client présente au guichet pour retirer
/// sa place. Rien ne garantissait qu'elles disent la même chose, et la gare n'avait aucun moyen de
/// savoir laquelle elle avait sous les yeux.
///
/// `GET /api/reservation/bon` réutilise le MÊME provider que l'écran de suivi : mêmes paramètres
/// (`slug`, `code`, `contact`), mêmes droits, même donnée. Pas de jeton : cette API est celle des
/// voyageurs, qui n'ont pas de compte — l'accès est tenu par le couple code + contact.
///
/// !! LE GÉNÉRATEUR LOCAL RESTE, comme REPLI. Le client peut vouloir rouvrir son bon dans une zone
///    sans réseau ; mieux vaut alors un bon composé ici qu'un message d'échec. On rend `null` pour
///    le dire à l'appelant, qui décide — et on ne replie QUE sur une panne de réseau : composer un
///    papier en réponse à un refus du serveur reviendrait à imprimer ce qu'il vient d'interdire.
class BonDistant {
  const BonDistant(this._dio);

  final Dio _dio;

  Future<Uint8List?> bon({required String code, required String contact}) async {
    try {
      final res = await _dio.get<List<int>>(
        '${AppConfig.reservationApiPrefix}/bon',
        queryParameters: {
          'slug': AppConfig.companySlug,
          'code': code,
          'contact': contact,
        },
        options: Options(responseType: ResponseType.bytes),
      );

      final octets = res.data;
      if (octets == null || octets.length < 4) {
        return null;
      }

      /*
        Un PDF commence par « %PDF ». Sans ce contrôle, une page d'erreur ou une réponse tronquée
        partirait au partage comme un document : le client verrait s'ouvrir un fichier illisible
        sans savoir d'où il vient.
      */
      final pdf = Uint8List.fromList(octets);
      if (pdf[0] != 0x25 || pdf[1] != 0x50 || pdf[2] != 0x44 || pdf[3] != 0x46) {
        return null;
      }

      return pdf;
    } on DioException catch (e) {
      final horsLigne = e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.response == null;

      if (horsLigne) {
        return null;
      }

      rethrow;
    }
  }
}
