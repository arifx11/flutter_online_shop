import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/screens/bottom_nav.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/message_screen.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});

  final List<Product> products = [
    Product(
      id: "1",
      name: "Kamote Chips",
      price: 51.00,
      image: "assets/images/kamote_chips.png",
    ),
    Product(
      id: "2",
      name: "Garlic Chips",
      price: 52.00,
      image: "assets/images/garlic_chip.png",
    ),
    Product(
      id: "3",
      name: "Kang Kong Chips",
      price: 53.00,
      image: "assets/images/kangkong_chips.png",
    ),
    Product(
      id: "4",
      name: "Mushroom Chips",
      price: 54.00,
      image: "assets/images/mushroom_chip.png",
    ),
    Product(
      id: "5",
      name: "Potato Chips",
      price: 55.00,
      image: "assets/images/potato_chip.png",
    ),
    Product(
      id: "6",
      name: "Banana Chips",
      price: 56.00,
      image: "assets/images/banana_chip.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BottomNav()),
            );
          },
        ),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(right: 0),
          child: SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search products...',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MessageScreen()),
              );
            },
          ),
        ],
      ),

      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(product.image, fit: BoxFit.contain),
                ),
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("₱${product.price.toStringAsFixed(2)}"),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add to cart"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
