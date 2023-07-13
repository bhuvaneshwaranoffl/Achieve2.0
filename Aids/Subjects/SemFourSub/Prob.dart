import 'package:flutter/material.dart';

import '../../../cse/Subject/SemOneSub/EnglishOne.dart';

class Prob extends StatefulWidget {
  const Prob({Key? key}) : super(key: key);

  @override
  State<Prob> createState() => _ProbState();
}

class _ProbState extends State<Prob> {
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
