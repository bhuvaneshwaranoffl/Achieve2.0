
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'DPCO/notes.dart';
import 'DPCO/ques.dart';
import 'DPCO/you.dart';
class DPCO extends StatefulWidget {
  const DPCO({Key? key}) : super(key: key);

  @override
  State<DPCO> createState() => _DPCOState();
}

class _DPCOState extends State<DPCO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesDPCO());

              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesDPCO());

              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouDPCO());

              },),
            ],
          ),
        )
    );
  }
}
