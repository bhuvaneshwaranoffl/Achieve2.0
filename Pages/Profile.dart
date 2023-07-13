
import 'package:achievpro/Auth/AuthService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets.dart';
import 'HomePage.dart';



class ProfilePage extends StatefulWidget {
  String userName;
  String email;
  String college;
  String registerNum;
  ProfilePage({Key? key, required this.userName,
    required this.college,
     required this.registerNum,
    required this.email})
      : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AuthService authService =AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: mcgpalette0.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.black,
        title:  Text(
          "Profile",
          style: GoogleFonts.dmSerifDisplay(textStyle: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),)
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey.shade300,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 50),
            children: <Widget>[
              const Icon(
                Icons.account_circle,
                size: 150,
                color: Colors.deepPurple,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.userName,
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSerifDisplay( textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ) ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                height: 2,
              ),
              ListTile(
                onTap: () {
                  nextScreen(
                      context,
                      const HomePage());
                },

                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                leading: const Icon(Icons.home),
                title:  Text(
                  "Home",
                  style: GoogleFonts.dmSerifDisplay(textStyle: const TextStyle(color: Colors.black),)
                ),
              ),
              ListTile(
                onTap: (){},
                selectedColor: Theme.of(context).primaryColor,

                selected: true,
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                leading: const Icon(Icons.group),
                title:  Text(
                  "Profile",
                  style: GoogleFonts.dmSerifDisplay(textStyle: const TextStyle(color: Colors.black),)
                ),
              ),
              ListTile(
                onTap: () async {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Logout"),
                          content: const Text("Are you sure you want to logout?"),
                          actions: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.cancel,
                                color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                              //  await authService.signOut();
                                // ignore: use_build_context_synchronously
                                // Navigator.of(context).pushAndRemoveUntil(
                                //     MaterialPageRoute(
                                //         builder: (context) => const LoginPage()),
                                //         (route) => false);
                              },
                              icon: const Icon(
                                Icons.done,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        );
                      });
                },
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                leading: const Icon(Icons.exit_to_app),
                title:  Text(
                  "Logout",
                  style: GoogleFonts.dmSerifDisplay(textStyle: const TextStyle(color: Colors.black),)
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 17),
                        blurRadius: 20,
                        spreadRadius: -23,
                        color: Colors.grey.shade800,
                      )
                    ]
                ),
                child: const Icon(
                  Icons.account_circle,
                  size: 200,
                  color:Colors.deepPurple,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: (){
                  var provider;
                  provider.showUserNameDialogAlert(context,widget.userName);
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 17),
                        blurRadius: 20,
                        spreadRadius: -23,
                        color: Colors.grey.shade800,
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person_2_sharp),
                            const Text("Full Name", style: TextStyle(fontSize: 17)),
                          ],
                        ),
                        Text(widget.userName, style: const TextStyle(fontSize: 17)),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 17),
                        blurRadius: 20,
                        spreadRadius: -23,
                        color: Colors.grey.shade800,
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.alternate_email_outlined),
                          const Text("Email", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                      Text(widget.email, style: const TextStyle(fontSize: 17)),
                    ],
                  ),
                ),
              ),const SizedBox(
                height: 20,
              ),

              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 17),
                        blurRadius: 20,
                        spreadRadius: -23,
                        color: Colors.grey.shade800,
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.engineering_outlined),
                          const Text("College Name", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                      Text(widget.college , style: const TextStyle(fontSize: 17)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 17),
                        blurRadius: 20,
                        spreadRadius: -23,
                        color: Colors.grey.shade800,
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.numbers_rounded),
                          const Text("Register num", style: TextStyle(fontSize: 17)),
                        ],
                      ),
                      Text(widget.registerNum, style: const TextStyle(fontSize: 17)),
                     ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
