import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuesEngOne extends StatefulWidget {
  const QuesEngOne({super.key});

  @override
  State<QuesEngOne> createState() => _QuesEngOneState();
}

class _QuesEngOneState extends State<QuesEngOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.deepPurple,
        title: Text(
          "Choose Pdf",
          style: GoogleFonts.dmSerifDisplay(textStyle: TextStyle(fontSize: 29)),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_to_drive_outlined,
          size: 33,
        ),
      ),
    );
  }
}
