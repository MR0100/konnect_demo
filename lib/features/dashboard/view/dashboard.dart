import 'package:flutter/material.dart';
import 'package:konnect_project/core/core.dart';
import 'package:konnect_project/features/dashboard/data/dashboard_data.dart';
import 'package:konnect_project/features/dashboard/provider/dashboard_provider.dart';

import '../../../config/config.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Konnect",
      ),
      body: Consumer<DashBoardProvider>(builder: (context, provider, child) {
        return pages[provider.currentIndex];
      }),
      bottomNavigationBar: Container(
        height: 70.hPr(context),
        width: double.infinity,
        decoration:
            BoxDecoration(color: VariableUtilities.theme.white, boxShadow: [
          BoxShadow(
              color: VariableUtilities.theme.darkGray.withOpacity(0.2),
              offset: const Offset(1, 0),
              spreadRadius: 0,
              blurRadius: 5),
        ]),
        child: Consumer<DashBoardProvider>(builder: (context, provider, child) {
          return CustomBottomNavigation(
            initialPage: 0,
            onChange: (int index) {
              provider.changeIndex(index);
            },
          );
        }),
      ),
    );
  }
}
