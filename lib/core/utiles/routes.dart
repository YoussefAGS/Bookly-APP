import 'package:bookly_app/features/home/presintation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presintation/views/homelayout.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presintation/views/splashview.dart';

abstract class AppRoutes {
  static const String homeLayout="/home";
  static const String bookDetailsViewBody="/bookDetailsViewBody";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeLayout(),
      ),
      GoRoute(
        path: '/bookDetailsViewBody',
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
