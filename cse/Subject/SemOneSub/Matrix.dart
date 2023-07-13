
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import 'EnglishOne.dart';
import 'internal/Mat/notes.dart';
import 'internal/Mat/ques.dart';
import 'internal/Mat/you.dart';

class Matrix extends StatefulWidget {
  const Matrix({Key? key}) : super(key: key);

  @override
  State<Matrix> createState() => _MatrixState();
}

class _MatrixState extends State<Matrix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesMatrix());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesMatrix());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouMatrix());
              },),
            ],
          ),
        )
    );
  }
}
