
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../../../cse/Subject/SemOneSub/EnglishOne.dart';
import 'MP/Ques.dart';
import 'MP/notes.dart';
import 'MP/you.dart';

class MedicalPhysics extends StatefulWidget {
  const MedicalPhysics({Key? key}) : super(key: key);

  @override
  State<MedicalPhysics> createState() => _MedicalPhysicsState();
}

class _MedicalPhysicsState extends State<MedicalPhysics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesMP());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesMP());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouMP());
              },),
            ],
          ),
        )
    );
  }
}
