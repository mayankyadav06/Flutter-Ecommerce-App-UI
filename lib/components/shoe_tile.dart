import 'package:ecommerce_app_ui/models/shoe_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  ShoeItem shoeItem;
  void Function()? onTap;

  ShoeTile({
    super.key,
    required this.shoeItem,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    // Tile to show individual shoe component
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: Container(
        margin: const EdgeInsets.only(left: 24),
        width: 250,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                shoeItem.imagePath,
              ),
            ),
            Text(
              shoeItem.name,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
            Text(
              shoeItem.description,
              style: TextStyle(color: Colors.grey[800], fontSize: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    shoeItem.price,
                    style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                      ),
                    ),
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
