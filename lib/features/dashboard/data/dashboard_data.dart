import 'package:flutter/material.dart';
import 'package:konnect_project/features/customs/view/customs_screen.dart';
import 'package:konnect_project/features/discussion_forum/view/discussion_forum_screen.dart';
import 'package:konnect_project/features/gst/view/gst_screen.dart';
import 'package:konnect_project/features/home/view/home_screen.dart';
import 'package:konnect_project/features/profile/view/profile_screen.dart';

import '../../../core/core.dart';

List<Map<String, dynamic>> bottomNavigationBarItems = [
  {
    "icon": AssetUtilities.homeIcon,
    "selectedIcon": AssetUtilities.homeSelectedIcon,
  },
  {
    "icon": AssetUtilities.discussionForumUnselectedIcon,
    "selectedIcon": AssetUtilities.discussionForumSelectedIcon,
  },
  {
    "icon": AssetUtilities.customsUnselectedIcon,
    "selectedIcon": AssetUtilities.customsSelectedIcon,
  },
  {
    "icon": AssetUtilities.gstUnselectedIcon,
    "selectedIcon": AssetUtilities.gstSelectedIcon,
  },
  {
    "icon": AssetUtilities.profileIcon,
    "selectedIcon": AssetUtilities.profileSelectedIcon,
  },
];

List<Widget> pages = [
  const HomeScreen(),
  const DiscussionForumScreen(),
  const CustomsScreen(),
  const GstScreen(),
  const ProfileScreen(),
];
