import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:recipes_app/Screens/Splash.dart';



void main() {
  runApp( const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            AnimatedSplashScreen(splash: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
             // ignore: sized_box_for_whitespace
             Center(
               // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
               child: Container(
                height: 300,
                width: 300,
                 child: FittedBox(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  fit: BoxFit.fill,
                  child: Image.asset("images/chef.png"),
                  ),
               ),
             ),      
                ],      
            
          ), nextScreen:  Splash(),
           backgroundColor: Colors.pink,
          splashIconSize: 550,
          duration: 2000,
          splashTransition: SplashTransition.rotationTransition,
          
          ),
          // ignore: sized_box_for_whitespace
          // Container(
          //   margin: const EdgeInsets.all(50),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: const [
          //           Center(
          //             child: Text("Chef in the Chicken ", 
          //    style: TextStyle(
          //              fontSize: 25,
          //    fontWeight: FontWeight.bold,
        
          //             ),),
          //           ),
          //         ],
          //       ),
          //     )
             
          ],
        ),
      ),
    );
  }
}
