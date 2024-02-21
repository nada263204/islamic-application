import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/Tabs/HadethTab/Hadeth.dart';
import 'package:islami_application/Tabs/HadethTab/HadethDetails.dart';
import 'package:islami_application/Theme.dart';
import 'package:islami_application/Widgets/LoadingIndecator.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List <Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if(ahadeth.isEmpty){loadAhadethFile();}
    return SafeArea(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/hadeth_logo.png'),
            const SizedBox(height: 10.0,),
            Container(
              color: AppTheme.PrimaryLight,
              child: const SizedBox(height: 3,width: double.infinity,)
              ),
              Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text('الاحاديث',
                      style: TextStyle(
                        fontFamily: 'El Messiri',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                       ),
                      ),
                    ),
                  ),
                ],
              ),
                Container(
              color: AppTheme.PrimaryLight,
              child: const SizedBox(height: 3,width: double.infinity,)
              ),
            Expanded(
              child:
              ahadeth.isEmpty
               ?LoadingIndecator()
               :
               ListView.separated(
                separatorBuilder:(context,index) => const SizedBox(height: 2,) ,
                itemBuilder: (context,index) => Row(
                  children: [
                      Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed(
                          HadethDetails.routeName,
                            arguments:ahadeth[index]
                            );
                        },
                        child: Center(
                          child: Text(ahadeth[index].title,
                          style: Theme.of(context).textTheme.headlineSmall,textAlign:TextAlign.right,
                          ),
                        )),
                    ),
                  ],
                ),
                itemCount: 50,
                ),
            )
          ],
        ),
    );
  }

  Future <void> loadAhadethFile()async{
    String ahadethFileContent = await rootBundle.loadString('assets/hadeth2/ahadeth.txt');
    List<String> ahadethStrings = ahadethFileContent.split('#');
    ahadeth = ahadethStrings.map((hadethString) {
      List<String> hadethlines = hadethString.trim().split('\n');
      String title = hadethlines.first;
      hadethlines.removeAt(0);
      List<String> content = hadethlines;
      return Hadeth(content, title);
    }).toList();
    setState(() {});
   }
}