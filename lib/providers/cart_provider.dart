import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _cartItems = {};

  // add to cart function

  // remove from cart function

  // increment quantity function
}
