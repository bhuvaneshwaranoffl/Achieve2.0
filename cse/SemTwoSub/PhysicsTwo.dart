
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'PHYTWO/notes.dart';
import 'PHYTWO/ques.dart';
import 'PHYTWO/you.dart';

class PhysicsTwo extends StatefulWidget {
  const PhysicsTwo({Key? key}) : super(key: key);

  @override
  State<PhysicsTwo> createState() => _PhysicsTwoState();
}

class _PhysicsTwoState extends State<PhysicsTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesPhyTwo());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesPhyTwo());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouPhyTwo());
              },),
            ],
          ),
        )
    );
  }
}
