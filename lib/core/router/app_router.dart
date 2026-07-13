import 'package:go_router/go_router.dart';

import '../../features/reservation/presentation/pages/booking_page.dart';
import '../../features/reservation/presentation/pages/history_page.dart';
import '../../features/reservation/presentation/pages/home_page.dart';
import '../../features/reservation/presentation/pages/track_page.dart';

/// Noms de routes centralisés (évite les chemins en dur dispersés).
class AppRoutes {
  const AppRoutes._();

  static const home = '/';
  static const booking = '/booking';
  static const track = '/track';
  static const history = '/history';
}

/// Configuration de navigation déclarative (go_router).
final appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.booking,
      builder: (context, state) => const BookingPage(),
    ),
    GoRoute(
      path: AppRoutes.track,
      builder: (context, state) => const TrackPage(),
    ),
    GoRoute(
      path: AppRoutes.history,
      builder: (context, state) => const HistoryPage(),
    ),
  ],
);
