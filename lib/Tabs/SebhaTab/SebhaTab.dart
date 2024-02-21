import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_application/Theme.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  String tasbeha = '';
  List <String> tasbeh =['سبحان الله ' , 'الحمد لله' , 'الله اكبر'];
  // String tasbeha = tasbeh[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
                GestureDetector(
                  onLongPressDown: (_){
                    addONe();
                  },
                  child: Container(
                    child: Stack(
                      children: [
                      Image.asset('assets/images/head of seb7a.png'),
                      Image.asset('assets/images/body of seb7a.png'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: 69,
                  height: 81,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppTheme.PrimaryLight,
                  ),
                  child: Stack(
                    children: [
                      Center(child: Text(counter.toString(),
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                      ),),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 137,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppTheme.PrimaryLight,
                  ),
                  child: Stack(
                    children: [
                      Center(child: Text(tasbeha,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter',
                        color: AppTheme.White
                      ),),),
                    ],
                  ),
                )
              ],
          ),
        ),
      ),
    );
  }
  addONe(){
    if(counter <= 32){
      counter++;
      tasbeha = tasbeh[counter%3];
    }
    else{
      counter = 0;
    }
    setState(() {});
  }
}