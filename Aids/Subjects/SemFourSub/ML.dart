import 'package:flutter/material.dart';

import '../../../cse/Subject/SemOneSub/EnglishOne.dart';
class ML extends StatefulWidget {
  const ML({Key? key}) : super(key: key);

  @override
  State<ML> createState() => _MLState();
}

class _MLState extends State<ML> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){},),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){},),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){},),
            ],
          ),
        )
    );
  }
}
