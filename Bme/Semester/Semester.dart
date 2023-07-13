
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Pages/HomePage.dart';
import '../../Widgets.dart';
import '../../cse/semester/Semone.dart';
import 'SemFourBme.dart';
import 'SemThreeBme.dart';
import 'SemTwoBme.dart';

class SemesterBme extends StatefulWidget {
  const SemesterBme({Key? key}) : super(key: key);

  @override
  State<SemesterBme> createState() => _SemesterBmeState();
}

class _SemesterBmeState extends State<SemesterBme> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // backgroundColor: mcgpalette0.shade800,
      body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Choose your \nSemester",
                    style: GoogleFonts.dmSerifDisplay(
                        textStyle: const TextStyle(fontSize: 30)),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: .90,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children:  [
                    CategoryCard(
                      image: "lib/images/one.png",
                      title: "SEM ONE",
                      press: (){
                        nextScreen(context, const SemOne());
                      },
                    ),
                    CategoryCard(
                        image: "lib/images/two.png",
                        title: "SEM TWO",
                        press: (){
                          nextScreen(context, const SemTwoBme());
                        }),
                    CategoryCard(
                      image: "lib/images/three.png",
                      title: "SEM THREE",
                      press: (){
                        nextScreen(context, const SemThreeBme());
                      },
                    ),
                    CategoryCard(
                      image: "lib/images/four.png",
                      title: "SEM FOUR",
                      press: (){
                        nextScreen(context, const SemFourBme());
                      },
                    ),
                    // CategoryCard(
                    //   image: "lib/images/five.png",
                    //   title: "SEM FIVE",
                    //   press: (){
                    //     nextScreen(context, const SemFiveBme());
                    //   },
                    // ),
                    // CategoryCard(
                    //   image: "lib/images/AIDS.png",
                    //   title: "SEM SIX",
                    //   press: (){},
                    // ),
                    // CategoryCard(
                    //   image: "lib/images/AIDS.png",
                    //   title: "SEM SEVEN",
                    //   press: (){},
                    // ),
                    // CategoryCard(
                    //   image: "lib/images/AIDS.png",
                    //   title: "SEM EIGHT",
                    //   press: (){},
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),

    );
  }
}
