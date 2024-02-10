import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/Tabs/QuraanTab/QuraanTab.dart';
import 'package:islami_application/Theme.dart';
import 'package:islami_application/Widgets/LoadingIndecator.dart';

class SurahDetailScreen extends StatefulWidget {
  static const String routeName = 'Surah-Detail';

  @override
  State<SurahDetailScreen> createState() => _SurahDetailScreenState();
}

class _SurahDetailScreenState extends State<SurahDetailScreen> {
  List <String> ayat = [];

  @override
  Widget build(BuildContext context) {
    SurahScreenArgs args = ModalRoute.of(context)!.settings.arguments as SurahScreenArgs;
    if(ayat.isEmpty){loadSurahFile(args.index);}
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.fill)
        ),
        child: Scaffold(
          appBar: AppBar(
          title: Text('اسلامي'),
          ),
          body: ayat.isEmpty
          ?LoadingIndecator()
          :Container(
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
                itemCount: ayat.length,
                itemBuilder: (BuildContext context, int index) => Text(
                  style: Theme.of(context).textTheme.titleLarge,
                  ayat[index],
                  textDirection: TextDirection.rtl,),
              ),
            ),
          ),
          
          
        ));
  }

   Future <void> loadSurahFile(int index)async{
    String sura = await rootBundle.loadString('assets/Files/${index + 1}.txt');
    ayat = sura.split('\n');
    setState(() {
      
    });
    
   }
}