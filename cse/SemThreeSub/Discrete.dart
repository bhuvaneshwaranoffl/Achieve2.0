
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'Discr/notes.dart';
import 'Discr/ques.dart';
import 'Discr/you.dart';

class Discrete extends StatefulWidget {
  const Discrete({Key? key}) : super(key: key);

  @override
  State<Discrete> createState() => _DiscreteState();
}

class _DiscreteState extends State<Discrete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesDiscrete());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesDiscrete());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouDiscrete());
              },),
            ],
          ),
        )
    );
  }
}
