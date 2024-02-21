import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          children: [
            SizedBox(height: 120,),
            Image.asset('assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png'),
            SizedBox(height: 50,),
            Image.asset('assets/images/إذاعة القرآن الكريم.png'),
            SizedBox(height: 40,),
            Image.asset('assets/images/Group 5.png')
          ],
        )
         ),
    );
  }
}