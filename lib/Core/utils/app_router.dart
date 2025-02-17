import 'package:bookly_app_clean_arch/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app_clean_arch/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kBookDetailsView = '/BookDetailsView';
  static const kHomeView = '/homeView';
  static const kSplashView = '/';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
