# resaflutter — App mobile de réservation

Application Flutter permettant à un **client invité** (sans compte) de réserver
une place sur un trajet, de payer (simulé), puis de suivre sa réservation.
Elle consomme l'**API publique** du backend (`/api/reservation/*`, périmètre
entreprise porté par `?slug=`).

## Lancer

L'URL du backend et la compagnie sont injectées au build via `--dart-define` :

```bash
flutter run \
  --dart-define=API_BASE_URL=http://10.0.2.2:8000 \
  --dart-define=COMPANY_SLUG=ma-compagnie
```

flutter run --dart-define=API_BASE_URL=http://localhost:8000 --dart-define=COMPANY_SLUG=transport-ira

- `API_BASE_URL` : racine du backend (sans `/api`).
  `10.0.2.2` = l'hôte local vu depuis l'émulateur Android. Sur un appareil
  physique, mettez l'IP LAN de la machine (ex. `http://192.168.1.20:8000`).
- `COMPANY_SLUG` : slug de la compagnie (champ `entreprise.slug` côté backend).

## Architecture

Découpage **feature-first en couches** (Clean Architecture allégée) :

```
lib/
├── app.dart                     # MaterialApp.router (thème, i18n fr, routes)
├── main.dart                    # bootstrap + ProviderScope
├── core/                        # transverse (sans logique métier)
│   ├── config/                  # AppConfig (dart-define)
│   ├── network/                 # Dio + ApiException (erreurs normalisées)
│   ├── router/                  # go_router
│   ├── theme/                   # thème Material 3
│   ├── formatting/              # FCFA + dates (intl, fr)
│   └── widgets/                 # widgets partagés (AsyncValueWidget, etc.)
└── features/reservation/
    ├── data/                    # models (freezed/json), datasource Dio, repo impl
    ├── domain/                  # interface repository, enums métier
    └── presentation/            # providers Riverpod, pages, widgets
```

**Stack** : Riverpod 3 (état/DI) · dio (réseau) · freezed + json_serializable
(modèles immuables) · go_router (navigation) · intl (formatage fr).

Règle de dépendance : `presentation → domain → data`. L'UI dépend de
l'interface `ReservationRepository`, jamais de Dio (testable/substituable).

## Parcours

Accueil → **tunnel** (trajet → départ → passager → paiement) → confirmation
(le « bon »). Plus : **suivi** (code + téléphone) et **historique** (téléphone).

> ⚠️ Le paiement est **simulé** (`PaiementSimuleProvider` côté backend) : l'app
> déclenche elle-même le webhook. Le branchement d'un vrai Mobile Money se fera
> plus tard (aucune URL de prestataire pour l'instant).

## Développement

```bash
flutter pub get
dart run build_runner build      # (re)génère *.freezed.dart / *.g.dart
flutter analyze
flutter test
```

Après toute modification d'un modèle `@freezed`, relancer `build_runner`.
