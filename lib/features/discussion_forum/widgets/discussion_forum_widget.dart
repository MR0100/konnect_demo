import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/core.dart';

class CustomLikeCommentButton extends StatelessWidget {
  final String title;
  final String imageName;
  final VoidCallback onPressed;
  const CustomLikeCommentButton(
      {super.key,
      required this.title,
      required this.imageName,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: VariableUtilities.theme.white,
      child: InkWell(
        onTap: onPressed,
        splashColor: VariableUtilities.theme.gray.withOpacity(0.5),
        child: SizedBox(
          height: 34.hPr(context),
          width: MediaQuery.of(context).size.width / 2 - 30,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  imageName,
                  height: 20.hPr(context),
                  width: 20.wPr(context),
                ),
                SizedBox(
                  width: 5.wPr(context),
                ),
                Text(
                  title,
                  style: FontUtilities.style(
                      fontColor: VariableUtilities.theme.moreColor,
                      fontSize: 14,
                      fontWeight: FWT.regular),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
