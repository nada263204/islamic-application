// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:islami_application/Tabs/HadethTab/HadethTab.dart';
import 'package:islami_application/Tabs/QuraanTab/QuraanTab.dart';
import 'package:islami_application/Tabs/RadioTab/RadioTab.dart';
import 'package:islami_application/Tabs/SebhaTab/SebhaTab.dart';
import 'package:islami_application/Tabs/SettingTab/SettingTab.dart';
import 'package:islami_application/Tabs/SettingTab/SettingsProvider.dart';
import 'package:islami_application/Theme.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';




class menuScreen extends StatefulWidget {
  static const String routeName = 'home';

  const menuScreen({super.key});

  @override
  State<menuScreen> createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {
  List <Widget> tabs = [
    QuraanTab(),
    const HadethTab(),
    const RadioTab(),
    const SebhaTab(),
    const SettingTab(),
  ];
  int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/images/${Provider.of<SettingProvider>(context).backgroundImagePath}.png'),
          fit: BoxFit.fill)
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        unselectedIconTheme: IconThemeData(color: AppTheme.White),
        unselectedLabelStyle: TextStyle(color: AppTheme.White),
        iconSize: 32.0,
        backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        onTap:(index){
          selectedIndex =index ;
          setState((){});
        },
        items: [
          BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/icon_quran.png')),
          label: AppLocalizations.of(context)!.quraan ),
          BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/icon_hadeth.png')),
          label: AppLocalizations.of(context)!.hadeth),
          BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/icon_radio.png')),
          label:AppLocalizations.of(context)!.radio ),
          BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/icon_sebha.png')),
          label:AppLocalizations.of(context)!.sebha),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label:AppLocalizations.of(context)!.setting),
        ]
      )
      )
    );
}
}