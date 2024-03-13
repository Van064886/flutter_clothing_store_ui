import 'package:clothing_store_ui/widgets/product_element.dart';
import 'package:clothing_store_ui/widgets/section_header.dart';
import 'package:flutter/material.dart';

class RecommandedProducts extends StatefulWidget {
  const RecommandedProducts({super.key});

  @override
  State<RecommandedProducts> createState() => _RecommandedProductsState();
}

class _RecommandedProductsState extends State<RecommandedProducts> {
  List<Widget> products = [];

  @override
  void initState() {
    super.initState();
    products = List.generate(11, (index) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductElement(
            picture: "assets/images/${index + 1}.png",
          ),
          const SizedBox(
            width: 20,
          )
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      height: height * .43,
      child: Column(
        children: [
          SectionHeader(title: "Recommanded for you", action: () {}),
          SizedBox(
            height: height * 0.35,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: products.reversed.toList(),
            ),
          )
        ],
      ),
    );
  }
}
