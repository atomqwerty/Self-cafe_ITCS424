import 'package:flutter/material.dart';
import 'package:project/utility/coffee.dart';
import 'package:project/screens/cart.dart';

class DetailScreen extends StatefulWidget {
  final Coffee coffee;

  const DetailScreen({Key? key, required this.coffee}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false; // Local state to manage favorite status

  @override
  void initState() {
    super.initState();
    // Initialize the favorite status based on global favlist
    isFavorite = favlist.contains(widget.coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(widget.coffee.name),
        actions: [
          IconButton(
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              setState(() {
                favlist.add(widget.coffee);
                // if (isFavorite) {
                //   favlist.remove(widget.coffee); // Remove from global favlist
                // } else {
                //   favlist.add(widget.coffee); // Add to global favlist
                // }
                isFavorite = !isFavorite; // Toggle local favorite status
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(widget.coffee.imageUrl),
              ),
            ),
            ListTile(
              title: Text(
                widget.coffee.name,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Text('5.0 (230)'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Description\n${widget.coffee.description}',
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            const SizeSelector(),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      shoppingList.add(CartItem(setState,
                          coffee: widget.coffee)); // Update your shopping list
                      Navigator.pushNamed(context, '/cart');
                    },
                    child: Text(
                      'Buy Now ฿${widget.coffee.price}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  _SizeSelectorState createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  final List<bool> _selections = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ToggleButtons(
        borderColor: Colors.transparent,
        fillColor: Colors.redAccent,
        borderWidth: 2,
        selectedBorderColor: Colors.transparent,
        selectedColor: Colors.white,
        borderRadius: BorderRadius.circular(25),
        children: <Widget>[
          _buildSizeButton('S'),
          _buildSizeButton('M'),
          _buildSizeButton('L'),
        ],
        onPressed: (int index) {
          setState(() {
            for (int i = 0; i < _selections.length; i++) {
              _selections[i] = i == index;
            }
          });
        },
        isSelected: _selections,
      ),
    );
  }

  Widget _buildSizeButton(String size) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 56.0),
      child: Text(size,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
