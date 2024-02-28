import 'package:flutter/material.dart';
import 'package:project/utility/my_style.dart';

class Promotions extends StatefulWidget {
  const Promotions({super.key});

  @override
  State<Promotions> createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyle().color_5,
      appBar: MyStyle().BuildBar(context, "Promotions"),
      body: Center(
        child: Image.network("https://www.starbucks.co.th/stb-media/2024/02/SR-15-Bonus-Stars5Stars-for-Spring-1080-x-640.webp"),
      ),
      // Uncomment these if you have them defined elsewhere
      // drawer: Drawer(),
      // bottomNavigationBar: MyStyle().BuildBotBar(context),
    );
  }
}
