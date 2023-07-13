
import 'package:flutter/material.dart';

// const textInputDecoration = InputDecoration(
//   labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
//   focusedBorder: OutlineInputBorder(
//       borderSide: BorderSide(color:Colors.white, width: 2)),
//   enabledBorder: OutlineInputBorder(
//       borderSide: BorderSide(color:Colors.white, width: 2)),
//   errorBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.white, width: 2)),
// );
void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}
void ShowSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: const TextStyle(fontSize: 15),
    ),
    backgroundColor: color,
    duration: const Duration(seconds: 2),
    action: SnackBarAction(
      label: "ok",
      onPressed: () {},
      textColor: Colors.white,
    ),
  ));
}