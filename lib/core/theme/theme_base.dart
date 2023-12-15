part of provider_app_theme;

/// all the colores used in the application are managed using this theme_base.
/// if you want to use the additional colors then you can add in this class.
///
abstract class ThemeBase {
  /// Constructor of the theme_base to required all the colors.
  ThemeBase(
      {required this.black,
      required this.darkGray,
      required this.gray,
      required this.lightGray,
      required this.blue,
      required this.green,
      required this.lightGreen,
      required this.orange,
      required this.lightOrange,
      required this.red,
      required this.moreColor,
      required this.white,
      required this.dividerColor,
      required this.yellow,
      required this.darkerGray,
      required this.f6f6f6});
  final Color transparent = Colors.transparent;

  final Color white;

  final Color black;
  final Color darkGray;
  final Color dividerColor;
  final Color gray;
  final Color lightGray;

  final Color blue;

  final Color green;
  final Color lightGreen;

  final Color orange;
  final Color lightOrange;

  final Color red;
  final Color yellow;
  final Color moreColor;
  final Color f6f6f6;
  final Color darkerGray;
}
