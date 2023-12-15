import 'package:flutter/material.dart';
import 'package:konnect_project/features/customs/models/article_model.dart';

import '../../core.dart';

class CustomCard extends StatelessWidget {
  final ArticleModel articleModel;
  const CustomCard({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: VariableUtilities.theme.f6f6f6,
        boxShadow: [
          BoxShadow(
            color: VariableUtilities.theme.black.withOpacity(0.25),
            offset: const Offset(0, 1),
            spreadRadius: 0,
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            articleModel.title,
            style: FontUtilities.style(
                    fontColor: VariableUtilities.theme.blue,
                    fontSize: 14,
                    fontWeight: FWT.medium)
                .copyWith(height: 1.5),
          ),
          SizedBox(
            height: 10.hPr(context),
          ),
          Text(
            "${articleModel.timeAgo} | ${articleModel.author}",
            style: FontUtilities.style(
                    fontColor: VariableUtilities.theme.darkerGray,
                    fontSize: 12,
                    fontWeight: FWT.regular)
                .copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}
