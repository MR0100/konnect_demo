import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onSearchTap;
  final VoidCallback? onNotificationTap;

  const CustomAppBar({
    required this.title,
    this.onSearchTap,
    this.onNotificationTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0.hPr(context)),
      child: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(2.hPr(context)),
            child: const Divider(),
          ),
          shadowColor: VariableUtilities.theme.white,
          centerTitle: false,
          leading: null,
          backgroundColor: VariableUtilities.theme.white,
          elevation: 0,
          title: Text(
            title,
            style: FontUtilities.style(fontSize: 22, fontWeight: FWT.semiBold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: onSearchTap,
                child: SvgPicture.asset(
                  AssetUtilities.searchIcon,
                  height: 19.hPr(context),
                  width: 19.wPr(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: onNotificationTap,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      AssetUtilities.notificationIcon,
                      height: 19.hPr(context),
                      width: 19.wPr(context),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10.0.wPr(context), bottom: 12.hPr(context)),
                          child: CircleAvatar(
                              radius: 5,
                              backgroundColor: VariableUtilities.theme.yellow,
                              child: Center(
                                child: Text(
                                  "2",
                                  style: FontUtilities.style(
                                      fontSize: 6, fontWeight: FWT.bold),
                                ),
                              )),
                        ))
                  ],
                ),
              ),
            ),
          ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
