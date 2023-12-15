import 'package:flutter/material.dart';
import 'package:konnect_project/features/dashboard/view/dashboard.dart';

import '../../features/splash/view/spalsh_screen.dart';

/// Manage all the routes used in the application.
class RouteConfig {
  /// first screen to open in the application.
  static const String root = '/';

  /// splash screen.
  static const String splashScreen = '/splashScreen';

  ///Dashboard Screen
  static const String dashboard = '/dashboard';

  /// we are using named route to navigate to another screen,
  /// and while redirecting to the next screen we are using this function
  /// to pass arguments and other routing things..
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    String routeName = settings.name ?? RouteConfig.root;

    /// this is the instance of arguments to pass data in other screens.
    dynamic arguments = settings.arguments;

    switch (routeName) {
      case RouteConfig.root:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RouteConfig.splashScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RouteConfig.dashboard:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DashBoard(),
        );
    }
    return null;
  }
}
