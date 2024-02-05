import 'package:flutter/material.dart';

void main() {
  runApp(MyCoffeeApp());
}

class MyCoffeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      theme: ThemeData(
        primaryColor: Colors.white, // Set main color to white
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyFavoritePage(),
    );
  }
}

class MyFavoritePage extends StatefulWidget {
  @override
  _MyFavoritePageState createState() => _MyFavoritePageState();
}

class _MyFavoritePageState extends State<MyFavoritePage> {
  List<Coffee> favoriteCoffees = [
    Coffee(name: 'Espresso', price: 3.99, imageUrl: 'https://media.istockphoto.com/id/136625069/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B9%80%E0%B8%AD%E0%B8%AA%E0%B9%80%E0%B8%9E%E0%B8%A3%E0%B8%AA%E0%B9%82%E0%B8%8B.jpg?s=612x612&w=is&k=20&c=-p8YZN5c3ULwR5TBHDMHKbALoo2Vp2kbVCi_QZqT-_k='),
    Coffee(name: 'Latte', price: 4.99, imageUrl: 'https://media.istockphoto.com/id/1152767411/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%96%E0%B9%89%E0%B8%A7%E0%B8%A2%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B8%A5%E0%B8%B2%E0%B9%80%E0%B8%95%E0%B9%89%E0%B9%81%E0%B8%A2%E0%B8%81%E0%B8%9A%E0%B8%99%E0%B8%9E%E0%B8%B7%E0%B9%89%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%AA%E0%B8%B5%E0%B8%82%E0%B8%B2%E0%B8%A7%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A1%E0%B8%B5%E0%B9%80%E0%B8%AA%E0%B9%89%E0%B8%99%E0%B8%97%E0%B8%B2%E0%B8%87%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%95%E0%B8%B1%E0%B8%94.jpg?s=612x612&w=is&k=20&c=MKYiZmU8jwDbSqYuzdhoJagK3oIJqomYjhwyovaBGaE='),
    Coffee(name: 'Cappuccino', price: 4.49, imageUrl: 'https://media.istockphoto.com/id/1152767411/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%96%E0%B9%89%E0%B8%A7%E0%B8%A2%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B8%A5%E0%B8%B2%E0%B9%80%E0%B8%95%E0%B9%89%E0%B9%81%E0%B8%A2%E0%B8%81%E0%B8%9A%E0%B8%99%E0%B8%9E%E0%B8%B7%E0%B9%89%E0%B8%99%E0%B8%AB%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%AA%E0%B8%B5%E0%B8%82%E0%B8%B2%E0%B8%A7%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A1%E0%B8%B5%E0%B9%80%E0%B8%AA%E0%B9%89%E0%B8%99%E0%B8%97%E0%B8%B2%E0%B8%87%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%95%E0%B8%B1%E0%B8%94.jpg?s=612x612&w=is&k=20&c=MKYiZmU8jwDbSqYuzdhoJagK3oIJqomYjhwyovaBGaE='),
    Coffee(name: 'Mocha', price: 5.49, imageUrl: 'https://media.istockphoto.com/id/170428990/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%A1%E0%B8%AD%E0%B8%84%E0%B8%84%E0%B9%88%E0%B8%B2%E0%B9%80%E0%B8%A2%E0%B9%87%E0%B8%99.jpg?s=612x612&w=is&k=20&c=rFPNrOKNVtQ8__ikCxw3ZKA25iDkFl3ZCHgruMdv2S0='),
    Coffee(name: 'Americano', price: 3.79, imageUrl: 'https://media.istockphoto.com/id/864498682/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B9%81%E0%B8%A2%E0%B8%81%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B8%A3%E0%B9%89%E0%B8%AD%E0%B8%99%E0%B9%83%E0%B8%99%E0%B9%81%E0%B8%81%E0%B9%89%E0%B8%A7%E0%B9%80%E0%B8%8B%E0%B8%A3%E0%B8%B2%E0%B8%A1%E0%B8%B4%E0%B8%81%E0%B8%9A%E0%B8%99%E0%B8%AA%E0%B8%B5%E0%B8%82%E0%B8%B2%E0%B8%A7.jpg?s=612x612&w=is&k=20&c=R2gF_SA8D_qyryBerMTnZa_ee8NHGzlmosmhOfvCg-0='),
    Coffee(name: 'Macchiato', price: 4.29, imageUrl: 'https://media.istockphoto.com/id/1069411024/th/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2/%E0%B8%96%E0%B9%89%E0%B8%A7%E0%B8%A2%E0%B8%84%E0%B8%B2%E0%B8%9B%E0%B8%B9%E0%B8%8A%E0%B8%B4%E0%B9%82%E0%B8%99%E0%B9%88%E0%B8%AA%E0%B8%B5%E0%B8%82%E0%B8%B2%E0%B8%A7.jpg?s=612x612&w=is&k=20&c=7dlvOYwk2xtsyL59GCzWV0PKanHMa0AzRrVeuNzckLM='),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            color: Colors.red, // Set button color to red
            onPressed: () {
              // Add your favorite action
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: favoriteCoffees.length,
            itemBuilder: (context, index) {
              return CoffeeCard(
                coffee: favoriteCoffees[index],
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    color: Colors.red, // Set button color to red
                    onPressed: () {
                      // Add home button action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.red, // Set button color to red
                    onPressed: () {
                      // Add search button action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.red, // Set button color to red
                    onPressed: () {
                      // Add cart button action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.person),
                    color: Colors.red, // Set button color to red
                    onPressed: () {
                      // Add profile button action
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
    return Card(
      elevation: 5,
      child: Container(
        width: 100,
        height: 200,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '\$${coffee.price.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Add to cart logic
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Set button color to red
                    ),
                    child: Text('Add to Cart',
                      style: TextStyle(color: Colors.white)),
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
