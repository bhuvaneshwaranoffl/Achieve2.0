
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'ALG/notes.dart';
import 'ALG/ques.dart';
import 'ALG/you.dart';

class ALG extends StatefulWidget {
  const ALG({Key? key}) : super(key: key);

  @override
  State<ALG> createState() => _ALGState();
}

class _ALGState extends State<ALG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesALG());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesALG());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouALG());
              },),
            ],
          ),
        )
    );
  }
}
