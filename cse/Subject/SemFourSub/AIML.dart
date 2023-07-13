
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'AIML/notes.dart';
import 'AIML/ques.dart';
import 'AIML/you.dart';

class AIML extends StatefulWidget {
  const AIML({Key? key}) : super(key: key);

  @override
  State<AIML> createState() => _AIMLState();
}

class _AIMLState extends State<AIML> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SetCard(image: "lib/images/question.png", title: "Question",press: (){
              nextScreen(context, const QuesAIML());
            },),
            SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
              nextScreen(context, const NotesAIML());
            },),
            SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
              nextScreen(context, const YouAIML());
            },),
          ],
        )
    );
  }
}
