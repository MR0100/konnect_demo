import 'package:konnect_project/core/core.dart';

import '../model/discussion_model.dart';

List<DiscussionModel> discussionData = [
  DiscussionModel(
      profileUrl: AssetUtilities.profileImage,
      name: "Rishi Vaidya",
      timeAgo: "18s",
      position: "Founder at Kapoor Fragrance LLP",
      description:
          "Hey! I just wanted to get started and see where the journey takes me from here!",
      commentCount: 0,
      imageUrl: AssetUtilities.postImage,
      likeCount: 1,
      isLikeByMe: false,
      isVerified: false),
  DiscussionModel(
      profileUrl: AssetUtilities.profileImage2,
      name: "Manveer Walia",
      timeAgo: "2h",
      position: "VP at Karma Legal and Associates | Taxation Nerd",
      description:
          "The Delhi High Court, in the case of Intec Export India Pvt. Ltd. v. Union of India has upheld the petitioner's right to claim a GST refund during the transitional ...see more",
      commentCount: 5,
      likeCount: 392,
      isLikeByMe: true,
      isVerified: true),
  DiscussionModel(
      profileUrl: AssetUtilities.profileImage3,
      name: "Mihir Singhal",
      timeAgo: "1w",
      position: "Incoming Associate at PwC USA",
      description:
          "As Zomato and Swiggy navigate the intricacies of GST demand notices, the broader issue underscores the challenges faced by these digital platforms in ...see more",
      commentCount: 0,
      likeCount: 71,
      isLikeByMe: false,
      isVerified: false),
  DiscussionModel(
      profileUrl: AssetUtilities.profileImage4,
      name: "Poonam Kurlekar",
      timeAgo: "2w",
      position: "VP at Karma Legal and Associates | Taxation Nerd",
      description:
          "SC clarified that customs duty does not take precedence over the rights of secured creditors. It would definitely help new import-export companies get easier ...see more",
      commentCount: 3,
      likeCount: 0,
      isLikeByMe: false,
      isVerified: false),
];
