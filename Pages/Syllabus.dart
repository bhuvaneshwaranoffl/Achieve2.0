
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../cse/Subject/SemOneSub/EnglishOne.dart';


class Syllabus extends StatefulWidget {
    const Syllabus({Key? key}) : super(key: key);

  @override
  State<Syllabus> createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(top:30,left: 20),
             child: Align(
               alignment: Alignment.topLeft,
               child: Text(
                 "Choose your \ndepartment",
                 style: GoogleFonts.dmSerifDisplay(
                     textStyle: const TextStyle(fontSize: 30)),
               ),
             ),
           ),

              Padding(
                padding: const EdgeInsets.only(bottom: 45.0),
                child: Column(
                  children: [
                    SetCard(image: "lib/images/cse.png", title: "CSE", press: (){

                    }),

                    SetCard(image: "lib/images/BME.png", title: "BME", press: (){

                    }),

                    SetCard(image: "lib/images/AIDS.png", title: "AI&DS", press: (){

                    }),
                  ],
                ),
              )

                    // SetCard(image: "lib/images/AIDS.png", title: "ECE", press: (){}),

                   //  SetCard(image: "lib/images/AIDS.png", title: "FT", press: (){}),

         ],
       ),
     ),
    );
  }
}

void openPDF(BuildContext context, File file) {
}
