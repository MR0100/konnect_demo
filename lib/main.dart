import 'package:flutter/material.dart';
import 'package:konnect_project/config/config.dart';
import 'package:konnect_project/config/providers/providers.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/core.dart';

void main() {
  runApp(const KonnectApp());
}

class KonnectApp extends StatefulWidget {
  const KonnectApp({super.key});

  @override
  State<KonnectApp> createState() => _KonnectAppState();
}

class _KonnectAppState extends State<KonnectApp> {
  bool isSettingInitialized = false;
  configSettings() async {
    VariableUtilities.preferences = await SharedPreferences.getInstance();
    if (context.mounted) {
      ThemeManager.initializeTheme(context);
    }
    isSettingInitialized = true;

    setState(() {});
  }

  @override
  void initState() {
    configSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!isSettingInitialized) {
      // TODO: This Should be image or Logo For Splash Screen.
      return const SizedBox();
    }
    return MultiProvider(
      providers: Providers.providers,
      builder: (context, child) {
        return MaterialApp(
          initialRoute: RouteConfig.root,
          onGenerateRoute: RouteConfig.onGenerateRoute,
          debugShowCheckedModeBanner: false,
          title: 'Konnect',
          theme: ThemeData(
            scaffoldBackgroundColor: VariableUtilities.theme.white,
            useMaterial3: false,

            /// this is the default font used for the application.
            fontFamily: 'Lato',
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: VariableUtilities.theme.blue,
              selectionColor: VariableUtilities.theme.blue,
              selectionHandleColor: VariableUtilities.theme.blue,
            ),
          ),
        );
      },
    );
  }
}
