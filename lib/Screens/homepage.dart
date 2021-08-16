// import 'package:chat_app/Models/friends.dart';
import 'package:chat_app/Screens/call_screen.dart';
import 'package:chat_app/Screens/camera_screen.dart';
import 'package:chat_app/Screens/chat_screen.dart';
import 'package:chat_app/Screens/status_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static const routName = "/homepage";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: Theme.of(context).textTheme.title,
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.more_vert, size: 30),
          ],
          bottom: TabBar(
            indicatorWeight: 2.00,
            indicatorColor: Colors.amber,
            tabs: <Widget>[
              Icon(
                Icons.camera_alt,
                size: 20,
              ),
              Text(
                "Chats",
                style: Theme.of(context).textTheme.body1,
              ),
              Text(
                "Status",
                style: Theme.of(context).textTheme.body1,
              ),
              Text(
                "Call",
                style: Theme.of(context).textTheme.body1,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MyCamera(),
            ChatScreen(),
            MyStatusCreen(),
            MyCallScreen(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyanAccent,
          child: Icon(Icons.message_rounded),
          onPressed: () {
            print("Add recepient");
          },
        ),
      ),
    );
  }
}
