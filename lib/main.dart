import 'package:flutter/material.dart';
import 'package:islami_application/Tabs/HadethTab/HadethDetails.dart';
import 'package:islami_application/Tabs/QuraanTab/SurahDetailesScreen.dart';

import 'package:islami_application/Theme.dart';
import 'package:islami_application/menu_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.LightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        menuScreen.routeName:(context) => menuScreen(),
        SurahDetailScreen.routeName:(context) =>  SurahDetailScreen(),
        HadethDetails.routeName:(context) => HadethDetails(),

        
      },
      initialRoute: menuScreen.routeName,
    );
  }
}
