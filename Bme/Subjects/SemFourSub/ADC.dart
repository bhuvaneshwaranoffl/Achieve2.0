import 'package:flutter/material.dart';

import '../../../cse/Subject/SemOneSub/EnglishOne.dart';

class ADC extends StatefulWidget {
  const ADC({Key? key}) : super(key: key);

  @override
  State<ADC> createState() => _ADCState();
}

class _ADCState extends State<ADC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SetCard(image: "lib/images/question.png", title: "Question",press: (){},),
            SetCard(image: "lib/images/notes.png", title: "Notes",press: (){},),
            SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){},),
          ],
        )
    );
  }
}
