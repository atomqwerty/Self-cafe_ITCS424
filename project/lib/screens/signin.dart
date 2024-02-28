import 'package:flutter/material.dart';
import 'package:project/utility/my_style.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
