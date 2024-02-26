import 'package:project/screens/cart.dart';

class Coffee {
  final String name;
  final String description;
  final String imageUrl;
  final int price;
  final int id;
  Coffee({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.id,
  });

  factory Coffee.fromMap(Map<String, dynamic> data) {
    return Coffee(
      name: data['name'],
      description: data['description'],
      imageUrl: data['imageUrl'],
      price: data['price'],
      id: data['id'],
    );
  }
}

final List<CartItem> shoppingList = [];
final List<Coffee> favlist = [];
final List<Coffee> notilist = [];
