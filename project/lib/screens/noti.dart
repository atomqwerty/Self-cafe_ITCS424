import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/utility/coffee.dart';
import 'package:project/utility/my_style.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyStyle().color_5,
        appBar: MyStyle().BuildBar(context, "Notification"),
        body: ListView.builder(
          itemCount: notilist.length,
          itemBuilder: (BuildContext context, int index) {
            var item = notilist[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Image.network(
                      item.imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(item.description),
                            const Text(
                              "Promo",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFAD1457)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        // Uncomment these if you have them defined elsewhere
        // drawer: Drawer(),
        // bottomNavigationBar: MyStyle().BuildBotBar(context),
      ),
    );
  }
}
