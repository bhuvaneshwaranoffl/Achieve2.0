
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../../../cse/Subject/SemOneSub/EnglishOne.dart';
import 'ECA/Ques.dart';
import 'ECA/notes.dart';
import 'ECA/you.dart';

class ECA extends StatefulWidget {
  const ECA({Key? key}) : super(key: key);

  @override
  State<ECA> createState() => _ECAState();
}

class _ECAState extends State<ECA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesECA());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesECA());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouECA());
              },),
            ],
          ),
        )
    );
  }
}
