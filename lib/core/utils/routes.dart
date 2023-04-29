import 'package:bookly_app/features/details_screen/presentation/view/details_screen.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search_screen/views/search_screen.dart';
import 'package:bookly_app/features/splash_screen/presentation/view/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String splash = '/';
  static String home = '/home';
  static String detailsScreen = '/details';
  static String searchScreen = '/search';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: detailsScreen,
        builder: (context, state) => const DetailsScreen(),
      ),
      GoRoute(
        path: searchScreen,
        builder: (context, state) =>  SearchScreen(),
      )
    ],
  );
}
