
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../../../cse/Subject/SemOneSub/EnglishOne.dart';
import 'BSME/Ques.dart';
import 'BSME/notes.dart';
import 'BSME/you.dart';
class BSME extends StatefulWidget {
  const BSME({Key? key}) : super(key: key);

  @override
  State<BSME> createState() => _BSMEState();
}

class _BSMEState extends State<BSME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesBSME());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesBSME());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouBSME());
              },),
            ],
          ),
        )
    );
  }
}
