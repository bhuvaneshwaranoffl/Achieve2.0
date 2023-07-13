
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'BEEE/notes.dart';
import 'BEEE/ques.dart';
import 'BEEE/you.dart';

class BEEE extends StatefulWidget {
  const BEEE({Key? key}) : super(key: key);

  @override
  State<BEEE> createState() => _BEEEState();
}

class _BEEEState extends State<BEEE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesBEEE());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesBEEE());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouBEEE());
              },),
            ],
          ),
        )
    );
  }
}
