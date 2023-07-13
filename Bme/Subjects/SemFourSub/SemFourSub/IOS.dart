
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'IOS/notes.dart';
import 'IOS/ques.dart';
import 'IOS/you.dart';

class IOS extends StatefulWidget {
  const IOS({Key? key}) : super(key: key);

  @override
  State<IOS> createState() => _IOSState();
}

class _IOSState extends State<IOS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesIOS());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesIOS());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouIOS());
              },),
            ],
          ),
        )
    );
  }
}
