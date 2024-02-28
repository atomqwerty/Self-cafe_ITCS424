import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/account.dart';
import 'package:project/screens/api.dart';
import 'package:project/screens/detail.dart';
import 'package:project/screens/promotions.dart';
import 'package:project/screens/signin.dart';
import 'package:project/screens/signup.dart';
import 'package:project/utility/my_style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project/firebase_options.dart';

import '../utility/coffee.dart'; // Ensure you have this file configured

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyle().color_5,
      appBar: MyStyle().BuildBar(context, "Home"),
      drawer: showDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('coffeeData')
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const LinearProgressIndicator();

                List<Coffee> coffees = snapshot.data!.docs.map((doc) {
                  return Coffee.fromMap(doc.data() as Map<String, dynamic>);
                }).toList();

                return GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: coffees.length,
                  itemBuilder: (context, index) {
                    notilist.add(coffees[index]);
                    return _buildCoffeeItem(coffees[index], context);
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyStyle().BuildBotBar(context),
    );
  }

  Drawer showDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          showHeadDrawer(),
          signInMenu(),
          signUpMenu(),
          accountInMenu(),
          apiInMenu(),
          promotionInMenu(),
        ],
      ), // scroll able
    );
  }

  ListTile signInMenu() {
    return ListTile(
      leading: Icon(Icons.login),
      title: Text('Sign In'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => SignIn());
        Navigator.push(context, route);
      },
    );
  }

  ListTile signUpMenu() {
    return ListTile(
      leading: Icon(Icons.create),
      title: Text('Sign Up'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => SignUp());
        Navigator.push(context, route);
      },
    );
  }


  ListTile accountInMenu() {
    return ListTile(
      leading: Icon(Icons.manage_accounts_sharp),
      title: Text('Manage Account'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => Account());
        Navigator.push(context, route);
      },
    );
  }

  ListTile apiInMenu() {
    return ListTile(
      leading: Icon(Icons.map),
      title: Text('Google Api Tester'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route = MaterialPageRoute(builder: (value) => Api());
        Navigator.push(context, route);
      },
    );
  }

  ListTile promotionInMenu() {
    return ListTile(
      leading: Icon(Icons.card_giftcard),
      title: Text('Promotions'),
      onTap: () {
        Navigator.pop(context);
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => Promotions());
        Navigator.push(context, route);
      },
    );
  }

  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
      currentAccountPicture : Icon(Icons.man),
      accountName: Text('Guest'),
      accountEmail: Text('Please Login'),
      decoration: BoxDecoration(
      color: MyStyle().color_1, // Change this to the desired background color
    ),
    );
  }

  Widget _buildCoffeeItem(Coffee coffee, BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
              coffee:
                  coffee), // Make sure you have a DetailScreen widget that can display coffee details
        ),
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              coffee.imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(coffee.name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(coffee.description),
                  const SizedBox(height: 6),
                  Text('฿${coffee.price}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
