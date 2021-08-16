import 'package:flutter/material.dart';
import '../Screens/individual_chat.dart';

class ChatTile extends StatelessWidget {
  final String titlename;
  final String message;

  ChatTile({required this.titlename, required this.message});

  void routeToIndivualChat(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      IndividualChat.routName,
      arguments: {
        "name": titlename,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        routeToIndivualChat(context);
      },
      leading: CircleAvatar(
        backgroundColor: Colors.amber,
      ),
      title: Text(titlename),
      subtitle: Text(
        message,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
