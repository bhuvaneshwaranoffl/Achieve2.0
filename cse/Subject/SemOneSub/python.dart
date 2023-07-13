
import 'package:flutter/material.dart';
import '../../../Widgets.dart';
import 'EnglishOne.dart';
import 'internal/Python/notes.dart';
import 'internal/Python/ques.dart';
import 'internal/Python/you.dart';
class Python extends StatefulWidget {
  const Python({Key? key}) : super(key: key);

  @override
  State<Python> createState() => _PythonState();
}

class _PythonState extends State<Python> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesPython());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesPython());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouPython());
              },),
            ],
          ),
        )
    );
  }
}
