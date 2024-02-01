import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop UI',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: CoffeeShopUI(),
    );
  }
}

class Coffee {
  final String name;
  final String description;
  final String imageUrl;
  final int price;

  Coffee({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

class CoffeeShopUI extends StatelessWidget {
  final List<Coffee> coffeeList = [
    Coffee(
      name: 'Caffe Americano',
      description: 'Espresso with hot water.',
      imageUrl: 'data:image/jpeg;base64,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',
      price: 90,
    ),
    Coffee(
      name: 'Ice Caffe Americano',
      description: 'Espresso with ice and cold water.',
      imageUrl: 'https://st3.depositphotos.com/4541319/33426/v/600/depositphotos_334268066-stock-illustration-cappuccino-cup-with-hearts-design.jpg',
      price: 110,
    ),
    // Add more coffee items...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text('Location\nSalaya, Nakornpathom'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
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
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: coffeeList.map((coffee) => _buildCategoryChip(coffee.name)).toList(),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.8,
              ),
              itemCount: coffeeList.length,
              itemBuilder: (context, index) {
                final coffee = coffeeList[index];
                return _buildCoffeeItem(coffee);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.grey[200],
      ),
    );
  }

  Widget _buildCoffeeItem(Coffee coffee) {
    return Card(
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
                Text(coffee.name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(coffee.description),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('฿${coffee.price}'),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
