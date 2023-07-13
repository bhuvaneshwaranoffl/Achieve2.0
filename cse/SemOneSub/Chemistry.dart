
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import 'EnglishOne.dart';
import 'internal/IntChe/Ques.dart';
import 'internal/IntChe/notes.dart';
import 'internal/IntChe/you.dart';

class Chemistry extends StatefulWidget {
  const Chemistry({Key? key}) : super(key: key);

  @override
  State<Chemistry> createState() => _ChemistryState();
}

class _ChemistryState extends State<Chemistry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesOneChe());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesChe());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouChe());
              },),
            ],
          ),
        )
    );
  }
}
