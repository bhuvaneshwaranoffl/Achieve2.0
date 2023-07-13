
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../../../cse/Subject/SemOneSub/EnglishOne.dart';
import 'TPD/Ques.dart';
import 'TPD/notes.dart';
import 'TPD/you.dart';

class TPD extends StatefulWidget {
  const TPD({Key? key}) : super(key: key);

  @override
  State<TPD> createState() => _TPDState();
}

class _TPDState extends State<TPD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesTPD());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesTPD());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouTPD());
              },),
            ],
          ),
        )
    );
  }
}
