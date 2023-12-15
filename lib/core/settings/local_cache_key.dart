/// we are using "shared_preference" for storing data locally.
/// we also have to specify the key with the preference object.
/// this is the class which will manage all the key.
class LocalCacheKey {
  /// this is the main key for the preference instance    .
  static const String applicationStorageKey = 'transspo_app_storage_key';

  /// this is the key for application theme.
  static const String applicationThemeMode = 'transspo_app_theme_mode';

  /// this is the key for application first time state.
  static const String applicationFirstTimeState =
      'transspo_app_first_time_state';

  /// this is the token for application authorization of APIs.
  static const String applicationAPIAuthorizationToken =
      'transspo_app_authorization_token';

  /// this is the key to store the login state of user.
  static const String applicationLoginState = 'transspo_app_is_login';
}
