import 'package:flutter/material.dart';

class AppTheme{
  static Color PrimaryLight  =Color.fromARGB(255, 180, 144, 92);
  static Color Black  =Color(0XFF242424);
  static Color White  =Color.fromARGB(255, 230, 227, 227);
  static ThemeData LightTheme = ThemeData(
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
      static ThemeData DarkTheme = ThemeData();
}