
import 'package:achievpro/HelperFunction/HelperFunction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../Aids/Semester/Semester.dart';
import '../Bme/Semester/Semester.dart';
import '../Widgets.dart';
import '../cse/semester/Semester.dart';
import 'About.dart';
import 'Profile.dart';
import 'Syllabus.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userName = "";
  String email = "";
  String college="";
  String registerNum="";
 // AuthService authService = AuthService();

  @override
  void initState() {
      super.initState();
      gettingUserData();
       _pagecontroller=PageController();
   }

  // string manipulation
  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  gettingUserData() async {
    await HelperFunction.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunction.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
    await HelperFunction.getUserCollegeFromSF().then((val) {
      setState(() {
        college = val!;
      });
    });
    await HelperFunction.getUserRegisterNumFromSF().then((val) {
      setState(() {
        registerNum = val!;
      });
    });
  }
 late  int myIndex=0;
 late PageController _pagecontroller;
 @override
 void dispose(){
   super.dispose();
   _pagecontroller=PageController();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: mcgpalette0.shade200,
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Achieve",
          style: GoogleFonts.dmSerifDisplay(
              textStyle: const TextStyle(fontSize: 28)),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active_outlined))
        ],
      ),
//drawer
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
                userName,
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSerifDisplay(textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                height: 2,
              ),
              ListTile(
                onTap: () {},
                selectedColor: Theme.of(context).primaryColor,
                selected: true,
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                leading: const Icon(Icons.home),
                title: Text(
                  "Home",
                  style: GoogleFonts.dmSerifDisplay(textStyle: const TextStyle(color: Colors.black),)
                ),
              ),
              ListTile(
                onTap: () {
                  nextScreenReplace(
                      context,
                      ProfilePage(
                        userName: userName,
                        email: email,
                         college: college,
                         registerNum: registerNum,
                      ));
                },
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                leading: const Icon(Icons.person),
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
                          title:  Text("Logout",style: GoogleFonts.dmSerifDisplay(textStyle: const TextStyle(color: Colors.black),),),
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
                              //   ignore: use_build_context_synchronously
                              //   Navigator.of(context).pushAndRemoveUntil(
                              //       MaterialPageRoute(
                              //           builder: (context) => const LoginPage()),
                              //           (route) => false);
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

      body: SizedBox.expand(
        child: PageView(
          controller: _pagecontroller,
          onPageChanged: (index){
            setState(() {
              myIndex =index;
            });
          },
          children: const [
            FirstPage(),
            Syllabus(),
            About()
          ],
        ),
      ),
             bottomNavigationBar: Container(
               color: Colors.deepPurple,
               child:  Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: GNav(
                   selectedIndex: myIndex,
                   backgroundColor: Colors.deepPurple,
                     color: Colors.black,
                     onTabChange: (index){
                     setState(() {
                       _pagecontroller.jumpToPage(index);
                     });
                     },
                     activeColor: Colors.black,
                     padding: const EdgeInsets.all(15),
                     tabBackgroundColor: Colors.white,
                     gap: 10,
                     tabs:  [
                   GButton(icon: Icons.home,text: "Home",onPressed: (){
                   },),
                   GButton(icon: Icons.notes_rounded,text: "Syllabus",onPressed: (){
                     //nextScreen(context, const Syllabus());
                   }),
                   GButton(icon: Icons.favorite_border,text: "About Us",onPressed: (){
                     //nextScreen(context, const About());
                   }),
                 ]),
               ),
             ) ,
      );
  }
}

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final press;
  const CategoryCard(
      {Key? key, required this.image, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurple.shade400,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 17),
                blurRadius: 20,
                spreadRadius: -23,
                color: Colors.grey.shade800,
              )
            ]),
        //padding: const EdgeInsets.all(20),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  //const Spacer(),
                  Image.asset(
                    image,
                    height: 130,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.dmSerifDisplay(
                        textStyle:
                            const TextStyle(fontSize: 24, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Choose your \ndepartment",
                  style: GoogleFonts.dmSerifDisplay(
                      textStyle: const TextStyle(fontSize: 30)),
                ),
              ),
            ),
            // grid view starts
            SizedBox(
            height: 30,
             ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: .90,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children:  [
                  CategoryCard(
                    image: "lib/images/cse.png",
                    title: "CSE",
                    press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Semester()));
                    },
                  ),
                  CategoryCard(
                      image: "lib/images/BME.png",
                      title: "BME",
                      press: (){
                        nextScreen(context, const SemesterBme());
                      }),
                  CategoryCard(
                    image: "lib/images/AIDS.png",
                    title: "AI&DS",
                    press: (){
                      nextScreen(context, const SemesterAids());
                    },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
