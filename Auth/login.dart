
import 'package:achievpro/Auth/AuthService.dart';
import 'package:achievpro/Widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HelperFunction/HelperFunction.dart';
import '../Pages/HomePage.dart';
import 'DatabaseService.dart';
import 'Register.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading =false;
  final formkey = GlobalKey<FormState>();
  String email ="";
  String password="";
  String college="";
  String registerNum ="";
  AuthService authService =AuthService();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body:_isLoading
          ? const Center(
        child: CircularProgressIndicator(
            color:Colors.white),
      ):GestureDetector(
        onTap: ()=>FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Padding(
              padding:const EdgeInsets.all(20),
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("lib/images/achievelogo.png"),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text("ACHIEVE",style: GoogleFonts.dmSerifDisplay(
                            textStyle: const TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            )
                          ),),
                      ],
                    ),
                  ),
                 Image.asset("lib/images/login.png"),
                 TextFormField(
                     decoration: InputDecoration(
                       labelText: "Email",
                       prefixIcon: const Icon(Icons.alternate_email_outlined),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: const BorderSide(
                           color: Colors.deepPurple,
                           style: BorderStyle.solid,
                         ),
                       ),
                     ),
                   onChanged: (val){
                     setState(() {
                       email=val;
                     });
                   },
                   // check tha validation
                   validator: (val) {
                     return RegExp(
                         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                         .hasMatch(val!)
                         ? null
                         : "Please enter a valid email";
                   },
                 ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.deepPurple,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    obscureText: true,
                    onChanged: (val){
                      setState(() {
                        password=val;
                      });
                    },

                    validator: (val) {
                      if (val!.length < 8) {
                        return "Password must be at least 8 characters";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          login();
                        },
                        child: Text(
                          "Sign in ",
                          style:GoogleFonts.dmSerifDisplay(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20
                            )
                          )
                        ),
                      )),
                  const SizedBox(height: 10),
                   Text.rich(TextSpan(
                      text: "Don't have an account ? ",
                      style: const TextStyle(
                          color: Colors.white, fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Register here",
                            style: const TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                nextScreen(context, const Register());
                              }
                              ),
                      ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
login() async {
  if (formkey.currentState!.validate()) {
    setState(() {
      _isLoading = true;
    });
    await authService
        .loginWithUserNameandPassword(email, password,)
        .then((value) async {
      if (value == true) {
        QuerySnapshot snapshot =await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
            .gettingUserData(email);

        //saving values
        await HelperFunction.saveUserLoggedInStatus(true);
        await HelperFunction.saveUserEmailSF(email);
        await HelperFunction.saveUserNameSF(snapshot.docs[0]['fullName']);
        await HelperFunction.saveUserRegisterNumSF(snapshot.docs[0]['registerNum']);
        await HelperFunction.saveUserCollegeSF(snapshot.docs[0]['college']);
        nextScreenReplace(context, const HomePage());
      } else {
        ShowSnackbar(context, Colors.red, value);
        setState(() {
          _isLoading = false;
        });
      }
    });
  }
}
 }

