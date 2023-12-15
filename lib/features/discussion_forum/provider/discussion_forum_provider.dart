import 'package:flutter/widgets.dart';

import '../data/discussion_forum_data.dart';

class DiscussionForumProvider extends ChangeNotifier {
  likeUnlikePost(int index) {
    if (discussionData[index].isLikeByMe) {
      discussionData[index].likeCount--;
    } else {
      discussionData[index].likeCount++;
    }
    discussionData[index].isLikeByMe = !discussionData[index].isLikeByMe;
    notifyListeners();
  }
}
