import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DatabaseService {
  final String? uid;

  DatabaseService({this.uid});

  // reference for our collections
  final CollectionReference userCollection =
  FirebaseFirestore.instance.collection("users");

  final CollectionReference GroupCollection =
  FirebaseFirestore.instance.collection("Groups");



  // saving the userdata
  Future savingUserData(String fullName, String registerNum, String college,
      String email) async {
    return await userCollection.doc(uid).set({
      "fullName": fullName,
      "register": registerNum,
      "college": college,
      "email": email,
    });
  }

  // getting user data
  Future gettingUserData(String email) async {
    QuerySnapshot snapshot =
    await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }

Future updateUserData( String fullName ,String email , String college , String registerNum)async{
  return await userCollection.doc(uid).set({
    "fullName": fullName,
    "register": registerNum,
    "college": college,
    "email": email,
  });
}

Future <void> showUserNameDialogAlert(BuildContext context,String name)async {
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Update UserName"),

        content: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("ok")),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Cancel")),
        ],
      );
    });
}
}
