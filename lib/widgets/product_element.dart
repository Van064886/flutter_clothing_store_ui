// ignore_for_file: must_be_immutable

import 'package:clothing_store_ui/models/product.dart';
import 'package:clothing_store_ui/screens/product_details.dart';
import 'package:clothing_store_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductElement extends StatefulWidget {
  Product product;
  ProductElement({super.key, required this.product});

  @override
  State<ProductElement> createState() => _ProductElementState();
}

class _ProductElementState extends State<ProductElement> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return ProductDetails(product: widget.product,);
        }));
      },
      child: Container(
        width: size.width * .45,
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
                child: Hero(
                  tag: "_productElement_${widget.product.id!}",
                  child: Image.asset(
                    widget.product.picture!,
                    width: size.width * .40,
                    height: size.width * .40,
                  ),
                ),
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
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                      Text(
                        '400€',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
