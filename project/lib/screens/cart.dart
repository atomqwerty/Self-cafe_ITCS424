import 'package:flutter/material.dart';
import 'package:project/utility/coffee.dart';
import 'package:project/utility/my_style.dart';

class CartItem {
  final Coffee coffee;
  int quantity;
  CartItem(void setState, {required this.coffee, this.quantity = 1});
}

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // bool addCoffeeToCart(Coffee coffee) {
  //   for (var cartItem in shoppingList) {
  //     if (cartItem.coffee.id == coffee.id) {
  //       // Coffee exists, so we increment the quantity.
  //       setState(() {
  //         cartItem.quantity++;
  //       });
  //       return true; // Return true to indicate item was found and quantity was incremented.
  //     }
  //   }
  //   // Coffee does not exist in the cart, so we add it as a new CartItem.
  //   setState(() {
  //     shoppingList.add(CartItem(coffee: coffee));
  //   });
  //   return false; // Return false to indicate a new item was added.
  // }

  void _incrementQuantity(int index) {
    setState(() {
      shoppingList[index].quantity++;
    });
  }

  void _decrementQuantity(int index) {
    setState(() {
      if (shoppingList[index].quantity > 1) {
        shoppingList[index].quantity--;
      } else {
        shoppingList.removeAt(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyStyle().color_5,
        appBar: MyStyle().BuildBar(context, "Cart"),
        body: ListView.builder(
          itemCount: shoppingList.length,
          itemBuilder: (BuildContext context, int index) {
            var item = shoppingList[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Image.network(
                      item.coffee.imageUrl,
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
                              item.coffee.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(item.coffee.description),
                            Text(
                              '฿${item.coffee.price}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove, color: MyStyle().color_4),
                          onPressed: () => _decrementQuantity(index),
                        ),
                        Text('${item.quantity}',
                            style: const TextStyle(fontSize: 18)),
                        IconButton(
                          icon: Icon(Icons.add, color: MyStyle().color_4),
                          onPressed: () => _incrementQuantity(index),
                        ),
                      ],
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
