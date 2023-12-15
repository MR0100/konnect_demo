import 'package:konnect_project/features/dashboard/provider/dashboard_provider.dart';
import 'package:konnect_project/features/discussion_forum/provider/discussion_forum_provider.dart';
import 'package:konnect_project/features/gst/provider/gst_provider.dart';
import 'package:konnect_project/features/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

import '../../features/splash/provider/spalsh_provider.dart';

/// This class manage all the provider and return list of provider.
class Providers {
  /// This is the list of providers to manage and attache with application.
  static List<ChangeNotifierProvider> providers = [
    ChangeNotifierProvider<SplashProvider>(
      create: (_) => SplashProvider(),
    ),
    ChangeNotifierProvider<DashBoardProvider>(
      create: (_) => DashBoardProvider(),
    ),
    ChangeNotifierProvider<HomeProvider>(
      create: (_) => HomeProvider(),
    ),
    ChangeNotifierProvider<DiscussionForumProvider>(
      create: (_) => DiscussionForumProvider(),
    ),
    ChangeNotifierProvider<GstProvider>(
      create: (_) => GstProvider(),
    ),
  ];
}
