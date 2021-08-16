import 'package:chat_app/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

import '../Models/dummy_data.dart';

class ChatScreen extends StatefulWidget {
  static const routName = "/chatScreen";

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: friendsdetails.length,
      itemBuilder: (ctx, index) {
        return ChatTile(
            titlename: friendsdetails[index].username,
            message: friendsdetails[index].messages);
      },
      separatorBuilder: (ctx, index) {
        return Divider();
      },
    );
  }
}
