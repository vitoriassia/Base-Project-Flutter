import 'package:flutter/material.dart';

const kAppTitle = 'IPP- Projetos Innovare';

const baseColorApp = Color(0xFF000423);
const primaryColorApp = Color(0xFFFFFFFF);
const baseGreyColorApp = Color(0xfffafafa);

var defaultThemeData = ThemeData.light().copyWith(
  bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
  cursorColor: baseColorApp,
  brightness: Brightness.light,
  primaryColor: primaryColorApp,
  accentColor: baseColorApp,
  iconTheme: IconThemeData(color: baseColorApp),
  scaffoldBackgroundColor: baseGreyColorApp,
  textSelectionHandleColor: baseColorApp,
  textSelectionColor: baseColorApp,
  splashColor: Color(0x33000423),
  textTheme: kTextTheme,
  buttonTheme: ButtonThemeData(
    disabledColor: Colors.grey[400],
    buttonColor: primaryColorApp,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    textTheme: ButtonTextTheme.normal,
    splashColor: Color(0x33000423),
  ),
);

const kTextTheme = TextTheme(
    headline6: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black));

inputDecotationBlack({String labelText}) {
  return InputDecoration(
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 1.5)),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 1.0)),
    labelText: labelText,
    labelStyle: TextStyle(
        color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
    errorStyle: TextStyle(
      fontSize: 12.0,
      color: Colors.redAccent,
    ),
  );
}

inputDecotationInvisible({String labelText}) {
  return InputDecoration(
    contentPadding: EdgeInsets.all(0.0),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1.5)),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1.0)),
    labelText: labelText,
    labelStyle: TextStyle(
        color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
    errorStyle: TextStyle(
      fontSize: 12.0,
      color: Colors.redAccent,
    ),
  );
}

coCircularProgressIndicator() {
  return CircularProgressIndicator(
    backgroundColor: Colors.black,
    valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
  );
}

inputDecorationWhite({String labelText}) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2.0)),
    labelText: labelText,
    labelStyle: TextStyle(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
    errorStyle: TextStyle(
      fontSize: 10.0,
      color: Colors.redAccent,
    ),
  );
}
