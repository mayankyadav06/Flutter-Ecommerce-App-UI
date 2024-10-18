import 'package:ecommerce_app_ui/models/cart.dart';
import 'package:ecommerce_app_ui/models/cart_item.dart';
import 'package:ecommerce_app_ui/models/shoe_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(ShoeItem shoe) {
    Provider.of<Cart>(context, listen: false).removeFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    // Creating consumer for the cart page
    return Consumer<Cart>(
      builder: (context, cart, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "My Cart",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400),
            ),
          ),
          cart.getUserCart().isEmpty
              ?  // If cart is empty show empty cart else show the user cart elements
              const Expanded(  
                  child: Center(
                    child: Text(
                      "Empty Cart",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              : 
               Expanded(
                  child: ListView.builder(
                    itemCount: cart.getUserCart().length,
                    itemBuilder: (context, index) {
                      ShoeItem shoe = cart.getUserCart()[index];
                      return CartItem(
                        shoe: shoe,
                        onTap: () => removeFromCart(shoe),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
