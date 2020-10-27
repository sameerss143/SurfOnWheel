//Surf Rental Service website and app
import 'package:SurfOnWheel/Pages/SurfCamps.dart';
import 'package:SurfOnWheel/Pages/SurfHome.dart';
import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(
    MyApp(),
  );
  // runApp(
  //   MaterialApp(
  //     routes: <String, WidgetBuilder>{
  //       '/': (context) => MyApp(),
  //       '/surfboardhome': (context) => SurfBoardHome(),
  //       '/paddleboardhome': (context) => SurfBoardHome(),
  //       '/surfcamphome': (context) => SurfCampHome(),
  //     },
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        //'/': (context) => MyApp(),
        '/surfboardhome': (context) => SurfBoardHome(),
        '/paddleboardhome': (context) => SurfBoardHome(),
        '/surfcamphome': (context) => SurfCampHome(),
      },
      title: 'Surf On Wheel',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Surf On Wheel'),
    );
  }
}
