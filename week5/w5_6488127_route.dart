import 'package:flutter/material.dart';

String initRoute = '/favpage';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/favpage': (context) => FavPage(),
        '/cartpage': (context) => CartPage(),
        // other routes
      },
      initialRoute: initRoute,
    );
  }
}

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Mystyle().BuildtopBars('Favourite'),
            Mystyle().BuildbotBars(context),
          ],
        ),
      ),
    );
  }
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Mystyle().BuildtopBars('Cart'),
            Mystyle().BuildbotBars(context),
          ],
        ),
      ),
    );
  }
}

// import 'package:ex2/router.dart';

class Mystyle {
  Color color_1 = Color(0xFFB52617); //theme
  Color color_2 = Color(0xFFC67C4E); //
  Color color_3 = Color(0xFFF0F5FA); //second
  Color color_4 = Color(0xFFFFFFFF); //main

  SafeArea buildBar(double screenWidht, double screenHeight) {
    return SafeArea(
      child: Container(
        width: screenWidht,
        height: screenHeight,
        child: Stack(
          children: [
            Text('this is fav'),
          ],
        ),
      ),
    );
  }

  List<Coffee> favoriteCoffees = [
    Coffee(
        name: 'Espresso',
        price: 3.99,
        imageUrl:
            'https://media.istockphoto.com/id/136625069/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B9%80%E0%B8%AD%E0%B8%AA%E0%B9%80%E0%B8%9E%E0%B8%A3%E0%B8%AA%E0%B9%82%E0%B8%8B.jpg?s=612x612&w=is&k=20&c=-p8YZN5c3ULwR5TBHDMHKbALoo2Vp2kbVCi_QZqT-_k='),
    Coffee(
        name: 'Latte',
        price: 4.99,
        imageUrl:
            'https://media.istockphoto.com/id/1152767411/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%96%E0%B9%89%E0%B8%A7%E0%B8%A2%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B8%A5%E0%B8%B2%E0%B9%80%E0%B8%95%E0%B9%89%E0%B9%81%E0%B8%A2%E0%B8%81%E0%B8%9A%E0%B8%99%E0%B8%9E%E0%B8%B7%E0%B9%89%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%AA%E0%B8%B5%E0%B8%82%E0%B8%B2%E0%B8%A7%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A1%E0%B8%B5%E0%B9%80%E0%B8%AA%E0%B9%89%E0%B8%99%E0%B8%97%E0%B8%B2%E0%B8%87%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%95%E0%B8%B1%E0%B8%94.jpg?s=612x612&w=is&k=20&c=MKYiZmU8jwDbSqYuzdhoJagK3oIJqomYjhwyovaBGaE='),
    Coffee(
        name: 'Cappuccino',
        price: 4.49,
        imageUrl:
            'https://media.istockphoto.com/id/1152767411/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%96%E0%B9%89%E0%B8%A7%E0%B8%A2%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B8%A5%E0%B8%B2%E0%B9%80%E0%B8%95%E0%B9%89%E0%B9%81%E0%B8%A2%E0%B8%81%E0%B8%9A%E0%B8%99%E0%B8%9E%E0%B8%B7%E0%B9%89%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%AA%E0%B8%B5%E0%B8%82%E0%B8%B2%E0%B8%A7%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A1%E0%B8%B5%E0%B9%80%E0%B8%AA%E0%B9%89%E0%B8%99%E0%B8%97%E0%B8%B2%E0%B8%87%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%95%E0%B8%B1%E0%B8%94.jpg?s=612x612&w=is&k=20&c=MKYiZmU8jwDbSqYuzdhoJagK3oIJqomYjhwyovaBGaE='),
    Coffee(
        name: 'Mocha',
        price: 5.49,
        imageUrl:
            'https://media.istockphoto.com/id/170428990/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%A1%E0%B8%AD%E0%B8%84%E0%B8%84%E0%B9%88%E0%B8%B2%E0%B9%80%E0%B8%A2%E0%B9%87%E0%B8%99.jpg?s=612x612&w=is&k=20&c=rFPNrOKNVtQ8__ikCxw3ZKA25iDkFl3ZCHgruMdv2S0='),
    Coffee(
        name: 'Americano',
        price: 3.79,
        imageUrl:
            'https://media.istockphoto.com/id/864498682/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B9%81%E0%B8%A2%E0%B8%81%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B8%A3%E0%B9%89%E0%B8%AD%E0%B8%99%E0%B9%83%E0%B8%99%E0%B9%81%E0%B8%81%E0%B9%89%E0%B8%A7%E0%B9%80%E0%B8%8B%E0%B8%A3%E0%B8%B2%E0%B8%A1%E0%B8%B4%E0%B8%81%E0%B8%9A%E0%B8%99%E0%B8%AA%E0%B8%B5%E0%B8%82%E0%B8%B2%E0%B8%A7.jpg?s=612x612&w=is&k=20&c=R2gF_SA8D_qyryBerMTnZa_ee8NHGzlmosmhOfvCg-0='),
    Coffee(
        name: 'Macchiato',
        price: 4.29,
        imageUrl:
            'https://media.istockphoto.com/id/1069411024/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%96%E0%B9%89%E0%B8%A7%E0%B8%A2%E0%B8%84%E0%B8%B2%E0%B8%9B%E0%B8%B9%E0%B8%8A%E0%B8%B4%E0%B9%82%E0%B8%99%E0%B9%88%E0%B8%AA%E0%B8%B5%E0%B8%82%E0%B8%B2%E0%B8%A7.jpg?s=612x612&w=is&k=20&c=7dlvOYwk2xtsyL59GCzWV0PKanHMa0AzRrVeuNzckLM='),
  ];

  Stack BuildbotBars(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color_4,
            ),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  color: color_1,
                  onPressed: () {
                    // Add home button action
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: color_1,
                  onPressed: () {
                    // Add fav button action
                    Navigator.pushNamed(context, '/favpage');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: color_1,
                  onPressed: () {
                    // Add cart button action
                    Navigator.pushNamed(context, '/cartpage');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  color: color_1,
                  onPressed: () {
                    // Add notification button action
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Stack BuildtopBars(String arg_title) {
    final String title = arg_title;
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color_4,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, // Shadow color
                  blurRadius: 5.0, // Spread of the shadow
                  offset: Offset(0, 2), // Offset of the shadow
                ),
              ],
            ),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_sharp),
                  color: color_1, // Set button color to red
                  onPressed: () {
                    // Add home button action
                  },
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: color_1, // Set button color to red
                  onPressed: () {
                    // Add home button action
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Coffee {
  final String name;
  final double price;
  final String imageUrl;

  Coffee({required this.name, required this.price, required this.imageUrl});
}

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;

  CoffeeCard({required this.coffee});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.2,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(coffee.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffee.name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '\$${coffee.price.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    SizedBox(height: 8),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add to cart logic
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red, // Set button color to red
                            ),
                            child: Text('Add to Cart',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
