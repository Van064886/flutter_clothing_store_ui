import 'package:clothing_store_ui/models/product.dart';
import 'package:clothing_store_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  Product product;
  ProductDetails({super.key, required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final List<String> _productSizes = ['S', 'M', 'L', 'XL'];
  String _selectedSize = 'S';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> products = List.generate(8, (index) {
      return Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(
                    color: index == 0 ? Colors.blue : Colors.grey, width: 3),
                borderRadius: BorderRadius.circular(8)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: appSecondColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Hero(
                    tag: '_productElement1',
                    child: Image.asset(
                      "assets/images/1.png",
                      fit: BoxFit.cover,
                      height: size.width * .8,
                      width: size.width * .8,
                    ),
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
                  children: products,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
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
                        style: TextStyle(fontSize: 12),
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
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Text(
                        '400€',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
              const Divider(),
              const SizedBox(height: 8),
              const Text(
                "Select size :",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: _productSizes.map((e) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedSize = e;
                      });
                    },
                    child: AnimatedContainer(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.only(right: 12),
                        duration: const Duration(seconds: 1),
                        decoration: BoxDecoration(
                            color: _selectedSize == e
                                ? Colors.blue
                                : appSecondColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          e,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800),
                        ))),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
