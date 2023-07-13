
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'OOP/notes.dart';
import 'OOP/ques.dart';
import 'OOP/you.dart';
class OOP extends StatefulWidget {
  const OOP({Key? key}) : super(key: key);

  @override
  State<OOP> createState() => _OOPState();
}

class _OOPState extends State<OOP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesOOP());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesOOP());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouOOP());
              },),
            ],
          ),
        )
    );
  }
}
