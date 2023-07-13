
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../../../cse/Subject/SemOneSub/EnglishOne.dart';
import 'ANATOMY/Ques.dart';
import 'ANATOMY/notes.dart';
import 'ANATOMY/you.dart';

class Anatomy extends StatefulWidget {
  const Anatomy({Key? key}) : super(key: key);

  @override
  State<Anatomy> createState() => _AnatomyState();
}

class _AnatomyState extends State<Anatomy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesAnatomy());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesAnatomy());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouAnatomy());
              },),
            ],
          ),
        )
    );
  }
}
