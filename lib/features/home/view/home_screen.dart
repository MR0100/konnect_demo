import 'package:flutter/material.dart';
import 'package:konnect_project/core/core.dart';
import 'package:konnect_project/features/home/data/home_data.dart';

import '../widgets/home_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.wPr(context)),
      child: Column(
        children: [
          SizedBox(
            height: 30.hPr(context),
          ),
          ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: homeListTileData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTileWidget(
                index: index,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20.hPr(context),
              );
            },
          ),
          SizedBox(
            height: 40.hPr(context),
          ),
          RichText(
            text: TextSpan(
              text: "Feel free to share you",
              style: FontUtilities.style(
                fontSize: 14,
                fontWeight: FWT.regular,
              ),
              children: [
                TextSpan(
                  text: " feedback",
                  style: FontUtilities.style(
                    fontSize: 14,
                    fontWeight: FWT.bold,
                  ),
                ),
                TextSpan(
                  text:
                      " to improve Konnect or get insights on a specific issue.",
                  style: FontUtilities.style(
                    fontSize: 14,
                    fontWeight: FWT.regular,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
