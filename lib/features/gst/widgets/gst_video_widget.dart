import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:konnect_project/core/core.dart';

import '../data/gst_data.dart';

class GstVideoWidget extends StatelessWidget {
  final int index;
  const GstVideoWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              gstVideoData[index]['video_url'],
              height: 75.hPr(context),
              width: 135.wPr(context),
            ),
            SvgPicture.asset(
              AssetUtilities.playButton,
              height: 25.hPr(context),
              width: 25.wPr(context),
            ),
          ],
        ),
        SizedBox(
          width: 10.wPr(context),
        ),
        Flexible(
          child: Text(
            gstVideoData[index]['title'],
            style: FontUtilities.style(
              fontSize: 14,
            ).copyWith(
              height: 1.5,
            ),
          ),
        )
      ],
    );
  }
}
