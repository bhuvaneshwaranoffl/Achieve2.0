
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import 'EnglishOne.dart';
import 'internal/Inther/notes.dart';
import 'internal/Inther/ques.dart';
import 'internal/Inther/you.dart';
class Heritage extends StatefulWidget {
  const Heritage({Key? key}) : super(key: key);

  @override
  State<Heritage> createState() => _HeritageState();
}

class _HeritageState extends State<Heritage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesHeritage());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesHeritage());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouHeritage());
              },),
            ],
          ),
        )
    );
  }
}
