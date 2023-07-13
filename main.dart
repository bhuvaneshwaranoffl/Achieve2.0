

import 'package:achievpro/Auth/login.dart';
import 'package:achievpro/HelperFunction/HelperFunction.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';

 //int ? initScreen;
 Future <void> main()async {
   WidgetsFlutterBinding.ensureInitialized();

  // SharedPreferences preferences = await SharedPreferences.getInstance();
  // initScreen = await preferences.getInt("initScreen");
  // await preferences.setInt("initScreen", 1);
   await Firebase.initializeApp();
   //await Firebase.initializeApp();
   // await FirebaseAppCheck.instance.activate();

  // await FirebaseStorage
  //     .instance
  //     .useEmulator(host: 'localhost', port: 9199);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false ;
  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }
  getUserLoggedInStatus() async{
    await HelperFunction.getUserLoggedInStatus().then((value) {
      if(value!=null){
       setState(() {
         _isSignedIn=value;
       });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.grey.shade200
      ),
     // initialRoute: initScreen==0 || initScreen== null ? 'onboard':'home',
     //  routes: {
     //    'home':(context)=> const LoginPage() ,
     //    'onboard':(context)=>const OnBoarding()
     //  },
      debugShowCheckedModeBanner: false,
      home:
       _isSignedIn ?
      const HomePage():
        const LoginPage(),
    );
  }
}


























// class OnBoarding extends StatefulWidget {
//   const OnBoarding({Key? key}) : super(key: key);
//
//   @override
//   State<OnBoarding> createState() => _OnBoardingState();
// }
//
// class _OnBoardingState extends State<OnBoarding> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Container(
//                 height: 500,
//                 decoration: const BoxDecoration(
//                     borderRadius:
//                         BorderRadius.only(bottomLeft: Radius.circular(100)),
//                     color: mcgpalette0,
//                     image: DecorationImage(
//                       alignment: Alignment.topCenter,
//                       image: AssetImage("lib/images/graduate.png"),
//                     )),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               Text(
//                 "ACHIEVE",
//                 style: GoogleFonts.dmSerifDisplay(
//                     textStyle: const TextStyle(
//                         fontSize: 30,
//                         // fontStyle: FontStyle.italic,
//                         fontWeight: FontWeight.bold)),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: Text(
//                   "A platform for engineering students",
//                   style: GoogleFonts.dmSerifDisplay(
//                       textStyle: const TextStyle(
//                           fontSize: 30,
//                           fontStyle: FontStyle.italic,
//                           fontWeight: FontWeight.w200)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       elevation: 10,
//                       primary: mcgpalette0.shade800,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20))),
//                   onPressed: (){
//                     Navigator.of(context).pushReplacement(MaterialPageRoute(
//                         builder: (context) => const LoginPage()));
//                   },
//                   child: Text(
//                     "Get Started",
//                     style: GoogleFonts.dmSerifDisplay(
//                         textStyle: const TextStyle(fontSize: 35)),
//                   ))
//             ],
//           ),
//           const Positioned(
//             top: 450,
//             left: 150,
//             child: CircleAvatar(
//               radius: 50,
//               backgroundImage: AssetImage("lib/images/achievelogo.png"),
//             ),
//           ),
//           Positioned(child: Column(
//
//           ))
//         ],
//       ),
//     );
//   }
// }
