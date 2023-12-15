import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:konnect_project/config/config.dart';
import 'package:konnect_project/core/core.dart';
import 'package:konnect_project/features/splash/data/splash_data.dart';
import 'package:konnect_project/features/splash/provider/spalsh_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late SplashProvider splashProvider;

  @override
  void initState() {
    splashProvider = context.read<SplashProvider>();
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, RouteConfig.dashboard);
    });
    splashProvider.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
      reverseDuration: const Duration(milliseconds: 400),
    );
    splashProvider.animation = Tween<double>(begin: 0, end: 1)
        .animate(splashProvider.animationController);
    splashProvider.fadeAnimation();
    super.initState();
  }

  @override
  void dispose() {
    splashProvider.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VariableUtilities.theme.yellow,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: AnimatedBuilder(
                  animation: splashProvider.animation,
                  builder: (context, child) {
                    int imageIndex =
                        splashProvider.index % splashImageList.length;
                    double height = 0;
                    double width = 0;
                    switch (imageIndex) {
                      case 0:
                        height = 150.hPr(context);
                        width = 150.wPr(context);
                        break;
                      case 1:
                        height = 190.hPr(context);
                        width = 108.wPr(context);
                        break;
                      case 2:
                        height = 58.hPr(context);
                        width = 182.wPr(context);
                        break;
                    }
                    return Opacity(
                      opacity: splashProvider.animation.value,
                      child: SizedBox(
                        height: height,
                        width: width,
                        child: SvgPicture.asset(
                          splashImageList[imageIndex],
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Text(
              "KONNECT INFRA PVT LTD",
              style: FontUtilities.style(
                fontSize: 14,
                fontWeight: FWT.medium,
              ),
            ),
            SizedBox(height: 20.hPr(context)),
          ],
        ),
      ),
    );
  }
}
