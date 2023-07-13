
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'DBMs/notes.dart';
import 'DBMs/ques.dart';
import 'DBMs/you.dart';
class DBMS extends StatefulWidget {
  const DBMS({Key? key}) : super(key: key);

  @override
  State<DBMS> createState() => _DBMSState();
}

class _DBMSState extends State<DBMS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesDBMS());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesDBMS());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouDBMS());
              },),
            ],
          ),
        )
    );
  }
}
