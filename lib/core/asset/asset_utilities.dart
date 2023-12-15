/// all the assets, images, video, audio and other files
/// used in the application.
///
/// are defined in this file.
class AssetUtilities {
  static const String _baseUrl = 'assets/';

  /// extra images are related to other graphics used in the application.
  static const String _extraImageBaseUrl = '${_baseUrl}images/extra/';

  /// svg are mainly used for icons.
  static const String _svgBaseUrl = '${_baseUrl}svg/';

  /// Splash Screen
  static const String splashProfileIcon =
      '${_svgBaseUrl}splash_profile_icon.svg';
  static const String splashK = '${_svgBaseUrl}splash_k.svg';
  static const String splashKonnect = '${_svgBaseUrl}splash_konnect.svg';

  ///Dashboard
  /// SVG icon
  static const String searchIcon = '${_svgBaseUrl}search_icon.svg';
  static const String notificationIcon = '${_svgBaseUrl}notification_icon.svg';
  static const String homeIcon = '${_svgBaseUrl}home_icon.svg';
  static const String homeSelectedIcon = '${_svgBaseUrl}home_selected_icon.svg';
  static const String discussionForumSelectedIcon =
      '${_svgBaseUrl}discussion_forum_selected_icon.svg';
  static const String discussionForumUnselectedIcon =
      '${_svgBaseUrl}discussion_forum_unselected_icon.svg';
  static const String profileIcon = '${_svgBaseUrl}profile.svg';
  static const String profileSelectedIcon =
      '${_svgBaseUrl}profile_selected_icon.svg';
  static const String customsUnselectedIcon =
      '${_svgBaseUrl}customs_unselected_icon.svg';
  static const String customsSelectedIcon =
      '${_svgBaseUrl}customs_selected_icon.svg';

  static const String gstSelectedIcon = '${_svgBaseUrl}gst_selected_icon.svg';
  static const String gstUnselectedIcon =
      '${_svgBaseUrl}gst_unselected_icon.svg';

  /// Home Screen
  /// Svg icon
  static const String gstIcon = '${_svgBaseUrl}gst_icon.svg';
  static const String customsIcon = '${_svgBaseUrl}customs_icon.svg';
  static const String discussionForumIcon =
      '${_svgBaseUrl}discussion_forum_icon.svg';

  /// Discussion Forum
  /// Images
  static const String profileImage = '${_extraImageBaseUrl}profile_image.png';
  static const String profileImage2 = '${_extraImageBaseUrl}profile2_image.png';
  static const String profileImage3 = '${_extraImageBaseUrl}profile3_image.png';
  static const String profileImage4 = '${_extraImageBaseUrl}profile4_image.png';
  static const String postImage = '${_extraImageBaseUrl}post_image.png';

  /// SVG icon
  static const String countLikeIcon = '${_svgBaseUrl}count_like_icon.svg';
  static const String likeIcon = '${_svgBaseUrl}like_icon.svg';
  static const String likeFilledIcon = '${_svgBaseUrl}like_filled_icon.svg';
  static const String commentIcon = '${_svgBaseUrl}comment_icon.svg';

  static const String verifiedIcon = '${_svgBaseUrl}verified_icon.svg';
  static const String addIcon = '${_svgBaseUrl}add_icon.svg';

  /// Gst
  /// Images
  static const String mediaImage = '${_extraImageBaseUrl}media_image.png';
  static const String mediaImage2 = '${_extraImageBaseUrl}media_image_2.png';
  static const String mediaImage3 = '${_extraImageBaseUrl}media_image_3.png';
  static const String mediaImage4 = '${_extraImageBaseUrl}media_image_4.png';
  static const String mediaImage5 = '${_extraImageBaseUrl}media_image_5.png';

  /// SVG icon
  static const String switcherIcon = '${_svgBaseUrl}switcher_icon.svg';
  static const String playButton = '${_svgBaseUrl}play_button.svg';
}
