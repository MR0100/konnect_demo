class DiscussionModel {
  final String profileUrl;
  final String name;
  final String timeAgo;
  final String position;
  final String description;
  String? imageUrl;
  int likeCount;
  final int commentCount;
  bool isLikeByMe;
  final bool isVerified;

  DiscussionModel(
      {required this.profileUrl,
      required this.name,
      required this.timeAgo,
      required this.position,
      required this.description,
      required this.commentCount,
      required this.isVerified,
      this.imageUrl,
      this.isLikeByMe = false,
      this.likeCount = 0});
}
