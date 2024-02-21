import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

import 'package:islami_application/Tabs/HadethTab/HadethDetails.dart';
import 'package:islami_application/Tabs/QuraanTab/SurahDetailesScreen.dart';
import 'package:islami_application/Tabs/SettingTab/SettingsProvider.dart';
import 'package:islami_application/Theme.dart';
import 'package:islami_application/menu_Screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context)=> SettingProvider(),
      child:const MyApp()
    )
     );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
            theme: AppTheme.LightTheme,
            darkTheme: AppTheme.DarkTheme,
            themeMode: settingProvider.themeMode,
            debugShowCheckedModeBanner: false,
            routes: {
              menuScreen.routeName:(context) => menuScreen(),
              SurahDetailScreen.routeName:(context) => SurahDetailScreen(),
              HadethDetails.routeName:(context) => HadethDetails(),
            },
            initialRoute: menuScreen.routeName,
            localizationsDelegates:AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
           locale: Locale(settingProvider.languageCode),
          );
        }
  }


