import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class ChatText extends StatelessWidget {
  final String messages;

  ChatText(this.messages);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      child: Bubble(
        padding: BubbleEdges.all(10),
        margin: BubbleEdges.only(top: 10),
        alignment: Alignment.topRight,
        nip: BubbleNip.rightTop,
        color: Colors.lightBlue[200],
        child: Text(
          messages,
          softWrap: true,
          maxLines: 3,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
