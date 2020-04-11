import 'package:flutter/material.dart';

TextStyle textStyle = const TextStyle(
  color: const Color(0XFFFFFFFF),
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle textStyleBlack = const TextStyle(
  color: primaryColor,
  fontSize: 22.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle formTextStyle = const TextStyle(
  color: const Color(0XFF717171),
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle textBoldBlack = const TextStyle(
  color: const Color(0XFF000000),
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Poppins",
);

TextStyle textBlack = const TextStyle(
  color: Colors.black,
  fontSize: 12.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle textBlack16 = const TextStyle(
  color: Colors.black,
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle textBoldWhite = const TextStyle(
  color: const Color(0XFFFFFFFF),
  fontSize: 10.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Poppins",
);

TextStyle textBlackItalic = const TextStyle(
  color: const Color(0XFF000000),
  fontSize: 14.0,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.italic,
  fontFamily: "Poppins",
);

TextStyle textGreyBlack = const TextStyle(
  color: const Color(0XFF4D4D4D),
  fontSize: 14.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);
TextStyle appBarTitle = const TextStyle(
  color: const Color(0XFF4D4D4D),
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle textGreyBold = const TextStyle(
  color: Colors.grey,
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Poppins",
);

TextStyle textStyleBlue = const TextStyle(
  color: primaryColor,
  fontSize: 14.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle textStyleActive = const TextStyle(
  color: const Color(0xFFF44336),
  fontSize: 14.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle textStyleValidate = const TextStyle(
  color: const Color(0xFFF44336),
  fontSize: 11.0,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.italic,
  fontFamily: "Poppins",
);

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    title: base.title.copyWith(
      fontFamily: 'Poppins',
    ),
  );
}

TextStyle textGreen = const TextStyle(
  color: const Color(0xFF00c497),
  fontSize: 14.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

final ThemeData base = ThemeData.light();

ThemeData appTheme = new ThemeData(
  primaryColor: orangeColor,
  appBarTheme: AppBarTheme(
    color: orangeColor,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      display4: TextStyle(color: Colors.white),
      title: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  buttonColor: primaryColor,
  indicatorColor: Colors.white,
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: blackBackgroundColor.withOpacity(0.50),
  ),
  splashColor: Colors.white24,
  splashFactory: InkRipple.splashFactory,
  accentColor: const Color(0xFF13B9FD),
  canvasColor: Colors.white,
  scaffoldBackgroundColor: primaryBackgroundColor,
  backgroundColor: Colors.white,
  errorColor: const Color(0xFFB00020),
  highlightColor: orangeColor,
  iconTheme: new IconThemeData(color: primaryColor),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: _buildTextTheme(base.textTheme),
  primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
  accentTextTheme: _buildTextTheme(base.accentTextTheme),
);

Color textFieldColor = const Color.fromRGBO(168, 160, 149, 0.6);
const Color whiteColor = const Color(0XFFFFFFFF);
const Color primaryColor = const Color(0xFF2E2E2E);
const Color blackBackgroundColor = const Color(0xFF000000);
const Color primaryBackgroundColor = const Color(0xFFFFFDF7); //FFFDF7 FFFDF7
const Color orangeColor = const Color(0xFFFFA500);
const Color inactiveColor = const Color(0xFFCACACA);
const Color secondaryColor = const Color(0xFFFF8900);
const Color facebook = const Color(0xFF4267b2);
const Color googlePlus = const Color(0xFFdb4437);

const Color greenColor = const Color(0xFF00c497);
//const Color greyColor = Colors.grey;

TextStyle textStyleSmall = const TextStyle(
  color: const Color(0xFFFFA500),
  fontSize: 16.0,
  fontFamily: "Poppins",
  fontWeight: FontWeight.normal,
);

TextStyle textPrimaryColor = new TextStyle(
  color: Color(0xFFFFA500),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Poppins",
);

TextStyle textSecondary = new TextStyle(
  color: Color(0xFFC27F04),
  fontSize: 12.0,
  fontWeight: FontWeight.w500,
  fontFamily: "Poppins",
);

TextStyle headingWhite = new TextStyle(
  color: Colors.white,
  fontSize: 22.0,
  fontWeight: FontWeight.w500,
  fontFamily: "Poppins",
);

TextStyle headingWhite18 = new TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle headingGrey = new TextStyle(
  color: Colors.grey,
  fontSize: 22.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle heading14 = new TextStyle(
  color: Colors.white,
  fontSize: 14.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle mediumHeading18 = new TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
  fontFamily: "Poppins",
);

TextStyle mediumHeading20 = new TextStyle(
  color: Colors.black,
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
  fontFamily: "Poppins",
);

TextStyle heading14Black = new TextStyle(
  color: Colors.black,
  fontSize: 14.0,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
);

TextStyle headingPrimaryColor = new TextStyle(
  color: primaryColor,
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Poppins",
);

TextStyle heading28Black = new TextStyle(
  color: blackBackgroundColor,
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  fontFamily: "OpenSans",
);

TextStyle heading35 = new TextStyle(
  color: Colors.white,
  fontSize: 35.0,
  fontWeight: FontWeight.bold,
  fontFamily: "Poppins",
);

const Color transparentColor = const Color.fromRGBO(0, 0, 0, 0.2);
const Color activeButtonColor = const Color.fromRGBO(43, 194, 137, 50.0);
const Color dangerButtonColor = const Color(0XFFf53a4d);

int getColorHexFromStr(String colorStr) {
  colorStr = "FF" + colorStr;
  colorStr = colorStr.replaceAll("#", "");
  int val = 0;
  int len = colorStr.length;
  for (int i = 0; i < len; i++) {
    int hexDigit = colorStr.codeUnitAt(i);
    if (hexDigit >= 48 && hexDigit <= 57) {
      val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 65 && hexDigit <= 70) {
      // A..F
      val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 97 && hexDigit <= 102) {
      // a..f
      val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
    } else {
      throw new FormatException("An error occurred when converting a color");
    }
  }
  return val;
}
