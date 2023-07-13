
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../../../cse/Subject/SemOneSub/EnglishOne.dart';
import 'FED/Ques.dart';
import 'FED/notes.dart';
import 'FED/you.dart';

class FED extends StatefulWidget {
  const FED({Key? key}) : super(key: key);

  @override
  State<FED> createState() => _FEDState();
}

class _FEDState extends State<FED> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesFED());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesFED());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouFED());
              },),
            ],
          ),
        )
    );
  }
}
