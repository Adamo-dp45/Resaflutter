/// Configuration applicative résolue au build via `--dart-define`.
///
/// Exemple :
/// ```
/// flutter run \
///   --dart-define=API_BASE_URL=http://10.0.2.2:8000 \
///   --dart-define=COMPANY_SLUG=ma-compagnie
/// ```
///
/// - [apiBaseUrl] : racine du backend Symfony/API Platform (sans `/api`).
///   Par défaut `10.0.2.2:8000` = l'hôte local vu depuis l'émulateur Android.
/// - [companySlug] : slug de la compagnie ; porte le périmètre entreprise de
///   l'API publique (`?slug=`). Une build = une compagnie.
class AppConfig {
  const AppConfig._();

  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://10.0.2.2:8000',
  );

  static const String companySlug = String.fromEnvironment(
    'COMPANY_SLUG',
    defaultValue: 'demo',
  );

  /// Préfixe des opérations publiques de réservation (API Platform).
  static const String reservationApiPrefix = '/api/reservation';
}
