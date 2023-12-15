import 'package:flutter/material.dart';
import 'package:konnect_project/core/core.dart';
import 'package:konnect_project/features/customs/data/article_data.dart';

class CustomsScreen extends StatelessWidget {
  const CustomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.wPr(context)),
          child: Row(
            children: [
              Text(
                'Customs Articles',
                style: FontUtilities.style(fontSize: 17),
              ),
              const Spacer(),
              CustomFlatButton(
                imageName: AssetUtilities.switcherIcon,
                onPressed: () {},
                title: "Videos",
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.hPr(context),
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: 16.0.wPr(context),
              ),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return CustomCard(articleModel: articleData[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 15.hPr(context),
                );
              },
              itemCount: articleData.length),
        )
      ],
    );
  }
}
