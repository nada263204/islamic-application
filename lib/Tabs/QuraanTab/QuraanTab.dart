import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_application/Tabs/QuraanTab/SurahDetailesScreen.dart';
import 'package:islami_application/Theme.dart';

class QuraanTab extends StatefulWidget {

  QuraanTab({super.key});

  @override
  State<QuraanTab> createState() => _QuraanTabState();
}

class _QuraanTabState extends State<QuraanTab> {
  List <String> surahsNames = [
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
            ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
            ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
            ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
            ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
            ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
            ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
            ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
            ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
            "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/qur2an_screen_logo.png'),
          const SizedBox(height: 10.0,),
          Container(
            color: AppTheme.PrimaryLight,
            child: const SizedBox(height: 3,width: double.infinity,)
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex:1,
                  child: Center(
                    child: Text('عدد الايات',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: 'El Messiri',fontSize: 25,fontWeight: FontWeight.w600)
                    // TextStyle(
                    //   fontFamily: 'El Messiri',
                    //   fontSize: 25,
                    //   fontWeight: FontWeight.w600,
                    // ),
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Center(
                    child: Text('اسم السوره',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontFamily: 'El Messiri',fontSize: 25,fontWeight: FontWeight.w600)
                    // TextStyle(
                    //   fontFamily: 'El Messiri',
                    //   fontSize: 25,
                    //   fontWeight: FontWeight.w600,
                    // ),
                    ),
                  ),
                )
              ],),
              Container(
            color: AppTheme.PrimaryLight,
            child: const SizedBox(height: 3,width: double.infinity,)
            ),
          Expanded(
            child: ListView.separated(
              separatorBuilder:(context,index) => const SizedBox(height: 2,) ,
              itemBuilder: (context,index) => Row(
                children: [
                  Expanded(
                      child: Container(
                        child: Center(
                          child: Text('286',
                          style: Theme.of(context).textTheme.headlineSmall),
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: AppTheme.PrimaryLight,
                      thickness: 3,
                    ),
                    Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(
                          SurahDetailScreen.routeName,
                          arguments:SurahScreenArgs(index, surahsNames[index])
                          );
                      },
                      child: Center(
                        child: Text(surahsNames[index],
                        style: Theme.of(context).textTheme.headlineSmall,textAlign:TextAlign.right,
                        ),
                      )),
                  ),
                ],
              ),
              itemCount: surahsNames.length,
              ),
          )
        ],
      ),
    );
  }
}

class SurahScreenArgs {
  int index;
  String surahsNames;

  SurahScreenArgs(this.index,this.surahsNames);

}