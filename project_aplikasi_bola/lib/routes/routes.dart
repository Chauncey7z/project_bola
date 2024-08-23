import 'package:get/get.dart';
import 'package:project_aplikasi_bola/routes/routes_name.dart';
import 'package:project_aplikasi_bola/view/landing.dart';
import 'package:project_aplikasi_bola/view/login.dart';
import 'package:project_aplikasi_bola/view/signup.dart';
import 'package:project_aplikasi_bola/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => SplashScreen(),
          transitionDuration: Duration(milliseconds: 255),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: RouteName.landingPage,
          page: () => LandingPage(),
        ),
        GetPage(
          name: RouteName.signUpPage,
          page: () => SignUpPage(),
        ),
        GetPage(
          name: RouteName.loginPage,
          page: () => LoginPage(),
        ),
      ];
}
