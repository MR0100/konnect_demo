part of provider_app_theme;

/// This is the class contains all the colors of the dark theme.
/// when user select the dark mode in the application then we use dark colors.
class DarkTheme extends ThemeBase {
  /// This is the constructor of the dark_theme to assign dark colors.
  /// all the colors for dark mode are defined in the constructor.
  DarkTheme()
      : super(
          white: const Color(0xFFFFFFFF),
          black: const Color(0xFF1E1E1E),
          darkGray: const Color(0xFF6C6C6C),
          gray: const Color(0xFFE5E3E3),
          lightGray: const Color(0xFFF5F5F5),
          blue: const Color(0xFF06004D),
          green: const Color(0xFF13A710),
          lightGreen: const Color(0xFFE7FFE1),
          orange: const Color(0xFFF38402),
          lightOrange: const Color(0xFFFAB722),
          red: const Color(0xFFFF1133),
          yellow: const Color(0xFFFFD600),
          f6f6f6: const Color(0xFFF6F6F6),
          dividerColor: const Color(0xFFD9D9D9),
          moreColor: const Color(0xFF4A4A4A),
          darkerGray: const Color(0xFF535353),
        );
}
