import 'package:camera/camera.dart';
import 'package:chat_app/Screens/camera_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/homepage.dart';
import 'Screens/individual_chat.dart';
import 'Screens/login_screen.dart';
import "./Screens/chat_screen.dart";

List<CameraDescription> cameras = [];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Colors.pink,
          textTheme: TextTheme(
            body1: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            title: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: Color.fromRGBO(0, 0, 102, 100),
          )),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        MyHomePage.routName: (ctx) => MyHomePage(),
        ChatScreen.routName: (ctx) => ChatScreen(),
        IndividualChat.routName: (ctx) => IndividualChat(),
      },
    );
  }
}
