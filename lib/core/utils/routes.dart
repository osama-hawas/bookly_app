import 'package:bookly_app/features/details_screen/presentation/view/details_screen.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/spalsh_screen/presentation/view/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String splash = '/';
  static String home = '/home';
  static String detailsScreen = '/details';
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
      )
    ],
  );
}
