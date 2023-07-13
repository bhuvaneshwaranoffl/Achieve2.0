import 'package:flutter/material.dart';

import '../../../cse/Subject/SemOneSub/EnglishOne.dart';

class ComputerSci extends StatefulWidget {
  const ComputerSci({Key? key}) : super(key: key);

  @override
  State<ComputerSci> createState() => _ComputerSciState();
}

class _ComputerSciState extends State<ComputerSci> {
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
