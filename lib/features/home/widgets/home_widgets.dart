import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:konnect_project/features/home/data/home_data.dart';

import '../../../core/core.dart';

class ListTileWidget extends StatelessWidget {
  final int index;
  const ListTileWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.wPr(context),
        vertical: 15.hPr(context),
      ),
      decoration: BoxDecoration(
          color: VariableUtilities.theme.f6f6f6,
          borderRadius: BorderRadius.circular(5.0.wPr(context)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ]),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          height: 60.hPr(context),
          width: 60.wPr(context),
          decoration: BoxDecoration(
            color: VariableUtilities.theme.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              homeListTileData[index]["leadingIcon"],
              height: 25.hPr(context),
              width: 25.wPr(context),
            ),
          ),
        ),
        title: Text(
          homeListTileData[index]["title"],
          style: FontUtilities.style(fontSize: 17, fontWeight: FWT.semiBold),
        ),
        subtitle: Text(homeListTileData[index]["subtitle"],
            style: FontUtilities.style(
              fontSize: 13,
              fontWeight: FWT.regular,
            )),
      ),
    );
  }
}
