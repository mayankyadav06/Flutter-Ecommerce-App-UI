import 'package:ecommerce_app_ui/models/shoe_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  ShoeItem shoe;
  void Function()? onTap;
  CartItem({super.key, required this.shoe, required this.onTap});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    // Show individual cart item
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0)),
                child: Image.asset(
                  widget.shoe.imagePath,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    widget.shoe.name,
                    style: const TextStyle(fontSize: 22.0),
                  ),
                  Text(
                    widget.shoe.price,
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
            ],
          ),

          //  Delete item buttom
          GestureDetector(
            onTap: widget.onTap,
            child: Container(
              width: 80,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
                size: 35.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
