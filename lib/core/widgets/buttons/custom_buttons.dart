import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core.dart';

class CustomFlatButton extends StatelessWidget {
  final String imageName;
  final String title;
  final VoidCallback onPressed;
  const CustomFlatButton(
      {super.key,
      required this.imageName,
      required this.onPressed,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: VariableUtilities.theme.white,
      child: InkWell(
        onTap: onPressed,
        splashColor: VariableUtilities.theme.white.withOpacity(.5),
        child: Container(
          height: 24.hPr(context),
          padding: EdgeInsets.symmetric(horizontal: 12.wPr(context)),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: VariableUtilities.theme.black.withOpacity(0.25),
                offset: const Offset(1, 0),
                spreadRadius: 0,
                blurRadius: 4,
              ),
            ],
            borderRadius: BorderRadius.circular(5),
            color: VariableUtilities.theme.yellow,
          ),
          child: Center(
            child: Row(
              children: [
                SvgPicture.asset(
                  imageName,
                  height: 12.hPr(context),
                  width: 12.wPr(context),
                ),
                SizedBox(width: 5.wPr(context)),
                Text(
                  title,
                  style: FontUtilities.style(
                      fontSize: 12, fontWeight: FWT.regular),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
