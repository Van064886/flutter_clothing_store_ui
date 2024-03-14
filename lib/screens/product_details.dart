import 'package:clothing_store_ui/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> _products = List.generate(8, (index) {
      return Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(
                  color: index == 0 ? Colors.blue : Colors.grey, width: 3),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(
              child: Image.asset(
                "assets/images/${index + 1}.png",
                width: 50,
                height: 50,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      );
    });

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(appSecondColor),
                  foregroundColor:
                      const MaterialStatePropertyAll(Colors.black87),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
              )),
        ),
        title: const Text("Pullover hoodie"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(appSecondColor),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.black87),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.favorite_outline,
                    size: 25,
                  ),
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: appSecondColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/1.png",
                    fit: BoxFit.cover,
                    height: size.width * .8,
                    width: size.width * .8,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: _products,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
