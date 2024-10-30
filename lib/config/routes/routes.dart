import 'package:doctor_module/view/screens/launch/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: AppLinks.splash_screen,
      page: () => const SplashScreen(),
    ),
  ];
}

class AppLinks {
  static const splash_screen = '/splash';
}
