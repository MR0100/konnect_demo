import 'package:flutter/material.dart';
import 'package:konnect_project/config/config.dart';
import 'package:konnect_project/core/core.dart';
import 'package:konnect_project/features/discussion_forum/data/discussion_forum_data.dart';
import 'package:konnect_project/features/discussion_forum/provider/discussion_forum_provider.dart';
import 'package:konnect_project/features/discussion_forum/widgets/post_widget.dart';

class DiscussionForumScreen extends StatelessWidget {
  const DiscussionForumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.hPr(context),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.wPr(context)),
          child: Row(
            children: [
              Text(
                'Discussion Forum',
                style: FontUtilities.style(fontSize: 17),
              ),
              const Spacer(),
              CustomFlatButton(
                imageName: AssetUtilities.addIcon,
                onPressed: () {},
                title: "Create Post",
              ),
            ],
          ),
        ),
        Consumer<DiscussionForumProvider>(
            builder: (context, discussionForumProvider, child) {
          return Expanded(
            child: ListView.separated(
              itemCount: discussionData.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) {
                return Divider(
                  color: VariableUtilities.theme.dividerColor,
                  thickness: 6.hPr(context),
                  height: 10.hPr(context),
                );
              },
              itemBuilder: (context, index) {
                return PostWidget(
                    index: index,
                    onPressed: () {
                      discussionForumProvider.likeUnlikePost(index);
                    });
              },
            ),
          );
        })
      ],
    );
  }
}
