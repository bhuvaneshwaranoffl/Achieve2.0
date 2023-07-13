
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'Dstru/notes.dart';
import 'Dstru/ques.dart';
import 'Dstru/you.dart';

class DataStructures extends StatefulWidget {
  const DataStructures({Key? key}) : super(key: key);

  @override
  State<DataStructures> createState() => _DataStructuresState();
}

class _DataStructuresState extends State<DataStructures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesStructures());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesStructures());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouStructures());
              },),
            ],
          ),
        )
    );
  }
}
