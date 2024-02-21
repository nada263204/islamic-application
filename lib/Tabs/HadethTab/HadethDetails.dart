import 'package:flutter/material.dart';
import 'package:islami_application/Tabs/HadethTab/Hadeth.dart';
import 'package:islami_application/Tabs/SettingTab/SettingsProvider.dart';
import 'package:islami_application/Theme.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/images/${Provider.of<SettingProvider>(context).backgroundImagePath}.png'),
          fit: BoxFit.fill)
        ),
        child: Scaffold(
          appBar: AppBar(
          title: Text(hadeth.title),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: AppTheme.White,
              borderRadius: BorderRadius.circular(8.0),
            ),
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height*0.05,
              horizontal: MediaQuery.of(context).size.height*0.05,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.builder(
                itemCount: hadeth.content.length,
                itemBuilder: (BuildContext context, int index) => Text(
                  style: Theme.of(context).textTheme.titleLarge,
                  hadeth.content[index],
                  textDirection: TextDirection.rtl,),
              ),
            ),
          ),
        )
      );
    }
  }
