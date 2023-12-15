import 'package:flutter/material.dart';
import 'package:konnect_project/config/config.dart';
import 'package:konnect_project/features/gst/provider/gst_provider.dart';

import '../../../core/core.dart';
import '../data/gst_data.dart';
import '../widgets/gst_video_widget.dart';

class GstScreen extends StatelessWidget {
  const GstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GstProvider>(builder: (context, gstProvider, child) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.wPr(context)),
            child: Row(
              children: [
                Text(
                  'GST Articles',
                  style: FontUtilities.style(fontSize: 17),
                ),
                const Spacer(),
                CustomFlatButton(
                  imageName: AssetUtilities.switcherIcon,
                  onPressed: () {
                    gstProvider.toggleVideoAndArticle();
                  },
                  title: gstProvider.isShowVideo ? "Articles" : "Videos",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.hPr(context),
          ),
          Expanded(
            child: gstProvider.isShowVideo
                ? ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0.wPr(context),
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GstVideoWidget(
                        index: index,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 15.hPr(context),
                      );
                    },
                    itemCount: gstVideoData.length)
                : ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0.wPr(context),
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CustomCard(articleModel: gstArticleData[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 15.hPr(context),
                      );
                    },
                    itemCount: gstArticleData.length),
          )
        ],
      );
    });
  }
}
