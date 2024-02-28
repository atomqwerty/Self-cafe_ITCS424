import 'package:flutter/material.dart';
import 'package:project/utility/my_style.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyle().color_5,
      appBar: MyStyle().BuildBar(context, "Test"),
      body: Center(
        child: Text("test"),
      ),
      // Uncomment these if you have them defined elsewhere
      // drawer: Drawer(),
      // bottomNavigationBar: MyStyle().BuildBotBar(context),
    );
  }
}
