import 'package:clothing_store_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductElement extends StatefulWidget {
  const ProductElement({super.key});

  @override
  State<ProductElement> createState() => _ProductElementState();
}

class _ProductElementState extends State<ProductElement> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * .41,
      height: size.height * .32,
      decoration: BoxDecoration(
          border: Border.all(color: appSecondColor, width: 2),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: appSecondColor,
            ),
            child: Center(
              child: Image.asset("assets/images/1.png"),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage:
                          Image.asset("assets/images/p6.jpeg").image,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "Pinky pull overs",
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pullover hoodie",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    Text(
                      '800€',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
