
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'DSci/notes.dart';
import 'DSci/ques.dart';
import 'DSci/you.dart';

class DataScience extends StatefulWidget {
  const DataScience({Key? key}) : super(key: key);

  @override
  State<DataScience> createState() => _DataScienceState();
}

class _DataScienceState extends State<DataScience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesDataScience());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesDataScience());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouDataScience());
              },),
            ],
          ),
        )
    );
  }
}
