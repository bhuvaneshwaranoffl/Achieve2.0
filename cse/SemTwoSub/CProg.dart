
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'CPROG/notes.dart';
import 'CPROG/ques.dart';
import 'CPROG/you.dart';

class Cprog extends StatefulWidget {
  const Cprog({Key? key}) : super(key: key);

  @override
  State<Cprog> createState() => _CprogState();
}

class _CprogState extends State<Cprog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesC());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesC());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouC());
              },),
            ],
          ),
        )
    );
  }
}
