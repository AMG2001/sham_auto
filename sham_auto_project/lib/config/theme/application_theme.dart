import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  ApplicationTheme._privateConstructor();

  static final ApplicationTheme _instance =
      ApplicationTheme._privateConstructor();

  static ApplicationTheme get instance => _instance;

  Color mainColor = Color(0xFFFFCB74);
  Color mainDark1Color = Colors.black;
  Color mainDark2Color = Color(0xFF2F2F2F);
  Color mainWhiteColor = Color(0xFFF6F6F6);

  late ThemeData applicationDarkTheme;
  late ThemeData applicationLightTheme;

  void initApplicationThemes() {
    _initLightTheme();
    _initDarkTheme();
  }

  void _initDarkTheme() {
    /**
   ####################### Application dark theme property ##############################
   */
    applicationDarkTheme = ThemeData.dark().copyWith(
        popupMenuTheme: PopupMenuThemeData(
          color: mainDark2Color,
        ),
        textTheme: TextTheme(
          button: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 18,
              fontWeight: FontWeight.w600),
          headline1: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 72,
              fontWeight: FontWeight.w600),
          headline2: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 56,
              fontWeight: FontWeight.w600),
          headline3: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 48,
              fontWeight: FontWeight.w600),
          headline4: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 32,
              fontWeight: FontWeight.w600),
          headline5: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 24,
              fontWeight: FontWeight.w600),
          headline6: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 16,
              fontWeight: FontWeight.w600),
          bodyText2: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 16,
              fontWeight: FontWeight.w600),
          subtitle1: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),

        /**
     * -------------------- Scaffold Background Color -----------------------
     */
        scaffoldBackgroundColor: mainDark1Color,
/**
 * -------------------------- Primary Color --------------------------
 */
        primaryColor: mainColor,
        /**
  * -------------------------- AppBar Theme --------------------------
  */
        appBarTheme: AppBarTheme(backgroundColor: mainDark1Color),
        /***
     * -------------------------- Primary Text Theme --------------------------
     */
        listTileTheme: ListTileThemeData(
          leadingAndTrailingTextStyle: TextStyle(color: mainColor),
        ),
        primaryTextTheme: TextTheme(
          button: GoogleFonts.roboto(
            color: Color(0xFFF6F6F6),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          headline1: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 72,
              fontWeight: FontWeight.w600),
          headline2: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 56,
              fontWeight: FontWeight.w600),
          headline3: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 48,
              fontWeight: FontWeight.w600),
          headline4: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 32,
              fontWeight: FontWeight.w600),
          headline5: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 24,
              fontWeight: FontWeight.w600),
          headline6: GoogleFonts.roboto(
              color: Color(0xFFF6F6F6),
              fontSize: 16,
              fontWeight: FontWeight.w600),
          bodyText2: GoogleFonts.roboto(
            color: Color(0xFFF6F6F6),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          subtitle1: GoogleFonts.roboto(
            color: Color(0xFFF6F6F6),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        /**
         * NavigationDestinationbar
         */
        navigationBarTheme: NavigationBarThemeData(
            backgroundColor: mainDark1Color, indicatorColor: mainColor),
        /**
     * ----------------------------- Drawer Theme -------------------------
     */
        drawerTheme: DrawerThemeData(
          backgroundColor: mainDark1Color,
        ),
        /**
     * -------------------------- Button Theme --------------------------
     */
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFFF6F6F6),
          textTheme: ButtonTextTheme.primary,
        ),
        /***
     * ************************************************************************
     * **************************  Buttons Section ****************************
     * ************************************************************************
     */
        /**
     *  -------------------------- 1 - OutlinedButton --------------------------
     */
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            textStyle: GoogleFonts.roboto(color: mainDark2Color),
            primary: mainColor,
            side: BorderSide(color: mainColor, width: 2),
          ),
        ),
        /**
     *  2 - ElevatedButton
     */
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle: GoogleFonts.roboto(color: mainDark2Color),
              primary: mainColor),
        ),
        /**
   *  3 - Text Button
   */
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: GoogleFonts.roboto(color: mainDark1Color),
            primary: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
/**
 * 4- Floating action button
 */
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: mainColor,
          foregroundColor: mainDark1Color,
          iconSize: 18,
        ),
        /**
     *************************************************************************
     ***************************  TextField Section **************************
     *************************************************************************
     * */

        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: mainDark1Color,
          suffixIconColor: mainDark1Color,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: mainColor)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: mainColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: mainColor),
          ),
        ),
        /**
               * *************************** Cursor Color **********************************
               */
        textSelectionTheme: TextSelectionThemeData(cursorColor: mainColor),
        /**
           * ************************* TF prefix - postfix themeing **********************
           */
        iconTheme: IconThemeData(color: mainDark1Color));
  }

  void _initLightTheme() {
    /**
   * ############################# Application light theme property ###########################
   */

    applicationLightTheme = ThemeData.light().copyWith(
        /**
     * -------------------- Scaffold Background Color -----------------------
     */
        scaffoldBackgroundColor: Color(0xFFF6F6F6),
/**
 * -------------------------- Primary Color --------------------------
 */
        primaryColor: mainColor,
        /**
  * -------------------------- AppBar Theme --------------------------
  */
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: mainDark1Color),
          backgroundColor: Color(0xFFF6F6F6),
          titleTextStyle: GoogleFonts.roboto(
            color: mainDark1Color,
            fontWeight: FontWeight.w600,
          ),
        ),
        /***
     * -------------------------- Primary Text Theme --------------------------
     */

        textTheme: TextTheme(
          button: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          headline1: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 72,
            fontWeight: FontWeight.w600,
          ),
          headline2: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 56,
            fontWeight: FontWeight.w600,
          ),
          headline3: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 48,
            fontWeight: FontWeight.w600,
          ),
          headline4: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
          headline5: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          headline6: GoogleFonts.roboto(
            color: mainDark1Color,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          bodyText2: GoogleFonts.roboto(
            color: mainDark1Color,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          subtitle1: GoogleFonts.roboto(
            color: mainDark1Color,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        primaryTextTheme: TextTheme(
          button: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          headline1: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 72,
            fontWeight: FontWeight.w600,
          ),
          headline2: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 56,
            fontWeight: FontWeight.w600,
          ),
          headline3: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 48,
            fontWeight: FontWeight.w600,
          ),
          headline4: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
          headline5: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          headline6: GoogleFonts.roboto(
            color: mainDark1Color,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          bodyText2: GoogleFonts.roboto(
            color: mainDark1Color,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          subtitle1: GoogleFonts.roboto(
            color: mainDark1Color,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        /**
         * NavigationDestinationbar
         */
        navigationBarTheme: NavigationBarThemeData(indicatorColor: mainColor),
        /**
     * ----------------------------- Drawer Theme -------------------------
     */
        drawerTheme: DrawerThemeData(backgroundColor: Color(0xFFF6F6F6)),
        /**
     * -------------------------- Button Theme --------------------------
     */
        buttonTheme: ButtonThemeData(
          buttonColor: mainDark1Color,
          textTheme: ButtonTextTheme.primary,
        ),
        /***
     * ************************************************************************
     * **************************  Buttons Section ****************************
     * ************************************************************************
     */
        /**
     *  -------------------------- 1 - OutlinedButton --------------------------
     */
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            textStyle: GoogleFonts.roboto(color: mainDark1Color),
            primary: mainColor,
            side: BorderSide(color: mainColor, width: 2),
          ),
        ),
        /**
     *  2 - ElevatedButton
     */
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: GoogleFonts.roboto(color: mainDark2Color),
            primary: mainColor,
          ),
        ),
        /**
   *  3 - Text Button
   */
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: GoogleFonts.roboto(color: mainDark1Color),
            primary: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
/**
 * 4- Floating action button
 */
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: mainColor,
          foregroundColor: mainDark1Color,
          iconSize: 18,
        ),
        /**
     *************************************************************************
     ***************************  TextField Section **************************
     *************************************************************************
     * */
        listTileTheme: ListTileThemeData(
            leadingAndTrailingTextStyle: TextStyle(color: mainColor),
            iconColor: mainColor),
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: mainColor,
          suffixIconColor: mainColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: mainColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: mainColor)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: mainColor),
          ),
        ),
        /**
               * *************************** Cursor Color **********************************
               */
        textSelectionTheme: TextSelectionThemeData(cursorColor: mainColor),
        /**
           * ************************* TF prefix - postfix themeing **********************
           */
        iconTheme: IconThemeData(color: mainColor));
  }
}