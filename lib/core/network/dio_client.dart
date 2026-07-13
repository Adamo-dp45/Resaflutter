import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import '../config/app_config.dart';

/// Fabrique l'instance [Dio] partagée par toute l'application.
///
/// - `baseUrl` pointe sur le backend, `Accept: application/json` force API
///   Platform à renvoyer des tableaux/objets JSON simples (pas de Hydra).
/// - Le paramètre `?slug=` (périmètre entreprise) est injecté par défaut sur
///   chaque requête, l'appelant n'a donc pas à le répéter.
/// - Un intercepteur de log n'est actif qu'en mode debug.
Dio createDio() {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppConfig.apiBaseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 20),
      sendTimeout: const Duration(seconds: 20),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      queryParameters: {'slug': AppConfig.companySlug},
      // On gère nous-mêmes les statuts d'erreur via ApiException.
      validateStatus: (status) => status != null && status < 400,
    ),
  );

  assert(() {
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (o) => developer.log(o.toString(), name: 'dio'),
      ),
    );
    return true;
  }());

  return dio;
}
