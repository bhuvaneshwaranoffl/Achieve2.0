import 'package:flutter/material.dart';

import '../../../cse/Subject/SemOneSub/EnglishOne.dart';

class OS extends StatefulWidget {
  const OS({Key? key}) : super(key: key);

  @override
  State<OS> createState() => _OSState();
}

class _OSState extends State<OS> {
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
