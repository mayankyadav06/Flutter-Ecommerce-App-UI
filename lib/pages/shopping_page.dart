import 'package:ecommerce_app_ui/components/shoe_tile.dart';
import 'package:ecommerce_app_ui/models/cart.dart';
import 'package:ecommerce_app_ui/models/shoe_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    void addShoeToCart(ShoeItem shoe) {
      Provider.of<Cart>(context, listen: false).addToCart(shoe);

      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Successfully added to cart"),
          content: Text("Check your cart"),
        ),
      );
    }
    // Create consumer for provider
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(6.0),
            ),
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(24),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search"),
                Icon(Icons.search),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 24.0, right: 24.0, top: 8.0, bottom: 18.0),
            child: Text(
              "Everyone flies... some fly longer than others.",
              style: TextStyle(
                  color: Colors.grey[800], fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hot Picks....",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),

          // display available shoes
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                ShoeItem shoe = Cart().getShoeList()[index];
                return ShoeTile(
                  shoeItem: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
