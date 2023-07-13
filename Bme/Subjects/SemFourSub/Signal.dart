import 'package:flutter/material.dart';

import '../../../cse/Subject/SemOneSub/EnglishOne.dart';

class Signal extends StatefulWidget {
  const Signal({Key? key}) : super(key: key);

  @override
  State<Signal> createState() => _SignalState();
}

class _SignalState extends State<Signal> {
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
