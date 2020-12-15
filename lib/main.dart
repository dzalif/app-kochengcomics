import 'package:flutter/material.dart';
import 'package:komik_app/login/Login.dart';
import 'package:komik_app/theme/Colors.dart';
import 'package:komik_app/theme/cut_corners_border.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nekomik',
      theme: _customTheme,
      home: Login(),
    );
  }
}

final ThemeData _customTheme = _buildCustomTheme();

ThemeData _buildCustomTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kBrown900,
    primaryColor: kAmber100,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kAmber100,
      colorScheme: base.colorScheme.copyWith(
        secondary: kBrown900,
      ),
    ),
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    scaffoldBackgroundColor: kBackgroundWhite,
    cardColor: kBackgroundWhite,
    textSelectionColor: kAmber100,
    errorColor: kErrorRed,
    textTheme: _buildCustomTextTheme(base.textTheme),
    primaryTextTheme: _buildCustomTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildCustomTextTheme(base.accentTextTheme),
    primaryIconTheme: base.iconTheme.copyWith(
        color: kBrown900
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kBrown900,
        ),
      ),
      border: CutCornersBorder(),
    ),
  );
}

TextTheme _buildCustomTextTheme(TextTheme base) {
  return base.copyWith(
    headline5: base.headline5.copyWith(
      fontWeight: FontWeight.w500,
    ),
    headline6: base.headline6.copyWith(
        fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodyText1: base.bodyText1.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  ).apply(
    fontFamily: 'Hammersmith',
    displayColor: kBrown900,
    bodyColor: kBrown900,
  );
}
