import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/sendText.dart';

class IndividualChat extends StatefulWidget {
  static const routName = "/individual";

  @override
  _IndividualChatState createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  final List<String> tempMessage = [];
  final _titleController = TextEditingController();

  void messageUpdate(String message) {
    setState(() {
      tempMessage.add(message);
    });
    _titleController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        title: Text(routeArgs["name"].toString()),
        toolbarHeight: 65,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            tempMessage.length == 0
                ? Center(child: Text("Chat Created"))
                : Container(
                    child: Flexible(
                      child: ListView.builder(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return ChatText(tempMessage[index]);
                        },
                        itemCount: tempMessage.length,
                      ),
                    ),
                  ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                controller: _titleController,
                minLines: 1,
                maxLines: 10,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.emoji_emotions,
                      color: Colors.black,
                    ),
                    onPressed: (){},
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => messageUpdate(_titleController.text),
                    icon: Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
