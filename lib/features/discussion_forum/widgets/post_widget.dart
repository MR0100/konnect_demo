import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:konnect_project/core/core.dart';
import 'package:konnect_project/features/discussion_forum/widgets/discussion_forum_widget.dart';

import '../data/discussion_forum_data.dart';

class PostWidget extends StatelessWidget {
  final int index;
  final VoidCallback onPressed;
  const PostWidget({super.key, required this.index, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.hPr(context)),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 20.wPr(context),
              backgroundImage: AssetImage(discussionData[index].profileUrl),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        discussionData[index].name,
                        style: FontUtilities.style(
                            fontSize: 14, fontWeight: FWT.bold),
                      ),
                      if (discussionData[index].isVerified) ...{
                        SizedBox(
                          width: 4.wPr(context),
                        ),
                        SvgPicture.asset(
                          AssetUtilities.verifiedIcon,
                          height: 10.hPr(context),
                          width: 18.wPr(context),
                          colorFilter: ColorFilter.mode(
                            VariableUtilities.theme.red,
                            BlendMode.srcIn,
                          ),
                        )
                      },
                      Text(
                        "  •  ",
                        style: FontUtilities.style(
                            fontSize: 11, fontWeight: FWT.regular),
                      ),
                      Text(
                        discussionData[index].timeAgo,
                        style: FontUtilities.style(
                            fontSize: 11, fontWeight: FWT.regular),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  size: 20,
                  color: VariableUtilities.theme.moreColor,
                ),
              ],
            ),
            subtitle: Text(
              discussionData[index].position,
              style: FontUtilities.style(fontSize: 11, fontWeight: FWT.regular),
            ),
          ),
          Text(
            discussionData[index].description,
            maxLines: 3,
            style: FontUtilities.style(fontSize: 14, fontWeight: FWT.regular)
                .copyWith(height: 1.5),
          ),
          if (discussionData[index].imageUrl != null) ...{
            SizedBox(
              height: 20.hPr(context),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Image.asset(
                discussionData[index].imageUrl!,
                height: 200.hPr(context),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          },
          SizedBox(
            height: 15.hPr(context),
          ),
          Row(
            children: [
              if (discussionData[index].likeCount > 0) ...{
                CircleAvatar(
                  backgroundColor: VariableUtilities.theme.yellow,
                  radius: 10,
                  child: SvgPicture.asset(
                    AssetUtilities.countLikeIcon,
                    height: 10.hPr(context),
                    width: 10.wPr(context),
                  ),
                ),
                SizedBox(
                  width: 5.wPr(context),
                ),
                Text(
                  discussionData[index].likeCount.toString(),
                  style: FontUtilities.style(
                      fontSize: 12, fontWeight: FWT.regular),
                ),
              },
              const Spacer(),
              SizedBox(
                width: 10.wPr(context),
              ),
              if (discussionData[index].commentCount > 0) ...{
                Text(
                  "${discussionData[index].commentCount.toString()} Comments",
                  style: FontUtilities.style(
                      fontSize: 12, fontWeight: FWT.regular),
                ),
              },
            ],
          ),
          SizedBox(
            height: 10.hPr(context),
          ),
          Divider(
            color: VariableUtilities.theme.dividerColor,
            height: 2,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                CustomLikeCommentButton(
                  title: "Like",
                  imageName: discussionData[index].isLikeByMe
                      ? AssetUtilities.likeFilledIcon
                      : AssetUtilities.likeIcon,
                  onPressed: onPressed,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: VerticalDivider(
                    color: VariableUtilities.theme.dividerColor,
                    thickness: 1,
                  ),
                ),
                CustomLikeCommentButton(
                  title: "Comment",
                  imageName: AssetUtilities.commentIcon,
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.hPr(context),
          ),
        ],
      ),
    );
  }
}
