import 'package:flutter/material.dart';
import '../widgets/login.dart';
// import '../Screens/chat_screen.dart';
import '../Screens/homepage.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void login(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(MyHomePage.routName);
  }

  @override
  Widget build(BuildContext context) {
    const double WIDTH = double.infinity;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Column(
          children: <Widget>[
            CustomPaint(
              size: Size(
                WIDTH,
                MediaQuery.of(context).size.height * 0.3987,
              ),
              painter: LoginPainter(),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      minLines: 1,
                      maxLines: 10,
                      decoration: InputDecoration(
                        labelText: "Email Id",
                        labelStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      minLines: 1,
                      maxLines: 10,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: TextButton.icon(
                      onPressed: () => login(context),
                      icon: Icon(Icons.arrow_forward),
                      label: Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
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
