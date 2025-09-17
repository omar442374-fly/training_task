import 'package:go_router/go_router.dart';
import 'package:training_task/Core/choice.dart';
import 'package:training_task/Core/intro_screen.dart';
import 'package:training_task/Core/main_screen.dart';
import 'package:training_task/Core/music_screen.dart';
import 'package:training_task/Core/onBoarding.dart';
import 'package:training_task/Routing/app_routes.dart';

class RouterGenerator {
  static GoRouter mainRouer = GoRouter(
    initialLocation: AppRoutes.onBoarding,
    routes: [
      GoRoute(
        path: AppRoutes.onBoarding,
        name: AppRoutes.onBoarding,
        builder: (context, state) {
          return Onboarding();
        },
      ),
      GoRoute(
        path: AppRoutes.introPage,
        name: AppRoutes.introPage,
        builder: (context, state) {
          return IntroScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.radioChoice,
        name: AppRoutes.radioChoice,
        builder: (context, state) {
          return RadioChoice();
        },
      ),
      GoRoute(
        path: AppRoutes.mainPage,
        name: AppRoutes.mainPage,
        builder: (context, state) {
          return MainScreen();
        },
      ),
    ],
  );
}
