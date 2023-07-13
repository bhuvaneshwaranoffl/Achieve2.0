
import 'package:achievpro/Auth/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../HelperFunction/HelperFunction.dart';
import '../Pages/HomePage.dart';
import '../Widgets.dart';
import 'AuthService.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isLoading =false;
  final formkey = GlobalKey<FormState>();
  String email ="";
  String password="";
  String fullName="";
  String college="";
  String registerNum ="";
  AuthService authService =AuthService();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: _isLoading
          ? const Center(
        child: CircularProgressIndicator(
            color:Colors.white),
      ): SingleChildScrollView(
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
                const SizedBox(
                  height: 100,
                ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "FullName",
              prefixIcon: const Icon(Icons.person_2_sharp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
              ),
            ),

                  onChanged: (val){
                    setState(() {
                      fullName=val;
                    });
                  },
                  // check tha validation
                  validator: (val){
                    if(val!.isNotEmpty){
                      return null;
                    }
                    else{
                      return "Name cannot be empty";
                    }
                  },
                ),
                const SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Register number",
              prefixIcon: const Icon(Icons.app_registration),
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
                      registerNum=val;
                    });
                  },
                  // check tha validation
                  validator: (val){
                    if(val!.isNotEmpty){
                      return null;
                    }
                    else{
                      return "Number cannot be empty";
                    }
                  },
                ),
                const SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              labelText: "College",
              prefixIcon: const Icon(Icons.engineering),
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
                      college=val;
                    });
                  },
                  // check tha validation
                  validator: (val){
                    if(val!.isNotEmpty){
                      return null;
                    }
                    else{
                      return "Name cannot be empty";
                    }
                  },
                ),
                const SizedBox(height: 20,),
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
                      prefixIcon: const Icon(Icons.lock),
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
                      return "Password must be at least 6 characters";
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
                         register();
                      },
                      child: Text(
                          "Register ",
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
                    text: "Already have an account ? ",
                    style: const TextStyle(
                        color: Colors.white, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Login here ",
                          style: const TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              nextScreen(context, const LoginPage());
                            }
                      ),
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
  register() async {
    if (formkey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService.registerUserWithEmailandPassword(fullName, registerNum, college, email, password)
          .then((value)async {
        if (value == true) {
          await HelperFunction.saveUserLoggedInStatus(true);
          await HelperFunction.saveUserEmailSF(email);
          await HelperFunction.saveUserNameSF(fullName);
          await HelperFunction.saveUserRegisterNumSF(registerNum);
          await HelperFunction.saveUserCollegeSF(college);
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

