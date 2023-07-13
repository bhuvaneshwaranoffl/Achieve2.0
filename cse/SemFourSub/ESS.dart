
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'ESS/notes.dart';
import 'ESS/ques.dart';
import 'ESS/you.dart';

class ESS extends StatefulWidget {
  const ESS({Key? key}) : super(key: key);

  @override
  State<ESS> createState() => _ESSState();
}

class _ESSState extends State<ESS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesESS());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesESS());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouESS());
              },),
            ],
          ),
        )
    );
  }
}
