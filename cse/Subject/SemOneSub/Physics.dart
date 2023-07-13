
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import 'EnglishOne.dart';
import 'internal/physics/notes.dart';
import 'internal/physics/ques.dart';
import 'internal/physics/you.dart';

class Physics extends StatefulWidget {
  const Physics({Key? key}) : super(key: key);

  @override
  State<Physics> createState() => _PhysicsState();
}

class _PhysicsState extends State<Physics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesPhy());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesPhyOne());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouPhy());
              },),
            ],
          ),
        )
    );
  }
}
