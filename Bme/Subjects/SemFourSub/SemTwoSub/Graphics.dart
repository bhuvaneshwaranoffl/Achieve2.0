
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'EG/notes.dart';
import 'EG/ques.dart';
import 'EG/you.dart';

class Graphics extends StatefulWidget {
  const Graphics({Key? key}) : super(key: key);

  @override
  State<Graphics> createState() => _GraphicsState();
}

class _GraphicsState extends State<Graphics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesEG());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesEG());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouEG());
              },),
            ],
          ),
        )
    );
  }
}
