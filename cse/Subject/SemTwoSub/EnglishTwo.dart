
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'ENGTWO/notes.dart';
import 'ENGTWO/ques.dart';
import 'ENGTWO/you.dart';

class EnglishTwo extends StatefulWidget {
  const EnglishTwo({Key? key}) : super(key: key);

  @override
  State<EnglishTwo> createState() => _EnglishTwoState();
}

class _EnglishTwoState extends State<EnglishTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesEngTwo());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesEngTWo());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouEngTwo());
              },),
            ],
          ),
        )
    );
  }
}
