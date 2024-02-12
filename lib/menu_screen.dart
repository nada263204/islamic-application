import 'package:flutter/material.dart';
import 'package:islami_application/Tabs/HadethTab/HadethTab.dart';
import 'package:islami_application/Tabs/QuraanTab/QuraanTab.dart';
import 'package:islami_application/Tabs/RadioTab/RadioTab.dart';
import 'package:islami_application/Tabs/SebhaTab/SebhaTab.dart';
import 'package:islami_application/Tabs/SettingTab/SettingTab.dart';
import 'package:islami_application/Theme.dart';


class menuScreen extends StatefulWidget {
  static const String routeName = 'home'; 

  @override
  State<menuScreen> createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {
  List <Widget> tabs = [
    const QuraanTab(),
    const HadethTab(),
    const RadioTab(),
    const SebhaTab(), 
    const SettingTab(),
  ];
  int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill)
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('اسلامي'),
          
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: AppTheme.Black,
        unselectedIconTheme: IconThemeData(color: AppTheme.White),
        unselectedLabelStyle: TextStyle(color: AppTheme.White),
        iconSize: 32.0,
        backgroundColor: AppTheme.PrimaryLight,
        onTap:(index){
          selectedIndex =index ;
          setState((){});
        },
        items: [
          BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/icon_quran.png')),
          label:'Quraan' ),
          BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/icon_hadeth.png')),
          label: 'Hadeth'),
          BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/icon_radio.png')),
          label:'Radio' ),
          BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/icon_sebha.png')),
          label:'Sebha' ),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label:'Setting' ),
        ]
      )
      )
    );
    
}}