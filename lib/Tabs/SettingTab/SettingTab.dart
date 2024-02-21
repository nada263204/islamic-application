import 'package:flutter/material.dart';
import 'package:islami_application/Tabs/SettingTab/SettingsProvider.dart';
import 'package:islami_application/Theme.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  List<Language> languages = [
    Language(name:'ENGLISH' , code:'en'),
    Language(name: 'ARABIC', code: 'ar'),
    ];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider =Provider.of<SettingProvider>(context);
    return SafeArea(
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark Mode',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600,color: AppTheme.PrimaryLight),),
                Switch(
                  value: settingProvider.themeMode == ThemeMode.dark,
                  onChanged: (value){
                    if(value){settingProvider.changeTheme(ThemeMode.dark);}
                    else{settingProvider.changeTheme(ThemeMode.light);}
                  },
                  activeTrackColor: Theme.of(context).primaryColor,
                  inactiveThumbColor: Theme.of(context).primaryColor,
                  thumbColor: MaterialStatePropertyAll(AppTheme.PrimaryLight),
                  ),
              ],
            ),
            Row(
              children: [
                Text('Language',
                style: TextStyle(
                  color: AppTheme.PrimaryLight,
                ),),
                SizedBox(width: 10,),
                DropdownButton<Language>(
                  value: languages.firstWhere((lang) => lang.code == settingProvider.languageCode),
                  items: languages.map((language) =>
                  DropdownMenuItem<Language>
                  (
                    value: language,
                    child: Text(language.name,
                    style: TextStyle(
                  color: AppTheme.PrimaryLight,
                ),))).toList(),
                  onChanged: (SelectedLanguage){
                    if(SelectedLanguage != null){
                      settingProvider.changeLanguage(SelectedLanguage.code);
                      setState(() {});
                    }
                  },
                  ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}

class Language{
  String name;
  String code;

  Language({required this.name,required this.code});

}