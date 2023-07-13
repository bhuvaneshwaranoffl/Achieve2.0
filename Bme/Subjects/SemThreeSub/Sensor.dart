
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../../../cse/Subject/SemOneSub/EnglishOne.dart';
import 'SENSOR/Ques.dart';
import 'SENSOR/notes.dart';
import 'SENSOR/you.dart';

class Sensors extends StatefulWidget {
  const Sensors({Key? key}) : super(key: key);

  @override
  State<Sensors> createState() => _SensorsState();
}

class _SensorsState extends State<Sensors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesSensor());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesSensor());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouSensor());
              },),
            ],
          ),
        )
    );
  }
}
