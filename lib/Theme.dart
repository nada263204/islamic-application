import 'package:flutter/material.dart';

class AppTheme{
  static Color PrimaryLight  =Color.fromARGB(255, 180, 144, 92);
  static Color PrimaryDark  =Color(0XFF141A2E);
  static Color Black  =Color(0XFF242424);
  static Color White  =Color.fromARGB(255, 230, 227, 227);
  static Color gold  =Color(0XFFFBC929);
  static ThemeData LightTheme = ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: PrimaryLight,
          selectedItemColor: Black,
          unselectedItemColor: White,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        primaryColor: PrimaryLight,
        inputDecorationTheme: InputDecorationTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'El Messiri'
          )
          ),
          textTheme: TextTheme(
            headlineSmall:TextStyle(
              color: Black,
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
            titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Black,
            )
          )
        );


      static ThemeData DarkTheme = ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: PrimaryDark,
          selectedItemColor: gold,
          unselectedItemColor: White,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        primaryColor: PrimaryDark,
        inputDecorationTheme: InputDecorationTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: White,
            fontFamily: 'El Messiri'
          )
          ),
          textTheme: TextTheme(
            headlineSmall:TextStyle(
              color: White,
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
            titleLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: gold,
            )
          )
        );
}