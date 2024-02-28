import 'package:flutter/material.dart';
import 'package:project/utility/my_style.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyle().color_5,
      appBar: MyStyle().BuildBar(context, "Account info."),
      body: Center(
        child: ListView(
          children: [
            
          ],
        ),
      ),
      // Uncomment these if you have them defined elsewhere
      // drawer: Drawer(),
      // bottomNavigationBar: MyStyle().BuildBotBar(context),
    );
  }
}
