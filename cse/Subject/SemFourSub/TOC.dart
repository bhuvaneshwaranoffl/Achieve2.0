
import 'package:flutter/material.dart';

import '../../../Widgets.dart';
import '../SemOneSub/EnglishOne.dart';
import 'TOC/notes.dart';
import 'TOC/ques.dart';
import 'TOC/you.dart';

class TOC extends StatefulWidget {
  const TOC({Key? key}) : super(key: key);

  @override
  State<TOC> createState() => _TOCState();
}

class _TOCState extends State<TOC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SetCard(image: "lib/images/question.png", title: "Question",press: (){
                nextScreen(context, const QuesTOC());
              },),
              SetCard(image: "lib/images/notes.png", title: "Notes",press: (){
                nextScreen(context, const NotesTOC());
              },),
              SetCard(image: "lib/images/youtube.png", title: "Youtube",press: (){
                nextScreen(context, const YouTOC());
              },),
            ],
          ),
        )
    );
  }
}
