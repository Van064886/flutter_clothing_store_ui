import 'package:clothing_store_ui/models/product.dart';
import 'package:clothing_store_ui/widgets/product_element.dart';
import 'package:clothing_store_ui/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PopularProducts extends StatefulWidget {
  const PopularProducts({super.key});

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  List<Widget> products = [];

  @override
  void initState() {
    super.initState();
    products = List.generate(11, (index) {
      Product product =
          Product(id: index + 1, picture: "assets/images/${index + 1}.png");
      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductElement(
            product: product,
          ),
          const SizedBox(
            width: 8,
          )
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * .40,
      child: Column(
        children: [
          SectionHeader(title: "Popular", action: () {}),
          SizedBox(
            height: height * 0.35,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: products,
            ),
          )
        ],
      ),
    );
  }
}
