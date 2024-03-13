import 'package:clothing_store_ui/utils/constants.dart';
import 'package:clothing_store_ui/widgets/bottom_navigation_element.dart';
import 'package:clothing_store_ui/widgets/brand_selector.dart';
import 'package:clothing_store_ui/widgets/popular_products.dart';
import 'package:clothing_store_ui/widgets/recommanded_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    int activeScreen = 1;
    TextEditingController _searchController = TextEditingController();

    return Scaffold(
        bottomNavigationBar: Container(
          height: height * .09,
          color: appSecondColor,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavigationElement(
                activeScreen: activeScreen,
                screen: 1,
                onTap: () {},
                label: "Home",
                icon: Icons.home,
              ),
              BottomNavigationElement(
                activeScreen: activeScreen,
                screen: 2,
                onTap: () {},
                label: "Explore",
                icon: Icons.shop,
              ),
              BottomNavigationElement(
                activeScreen: activeScreen,
                screen: 3,
                onTap: () {},
                label: "Wishlist",
                icon: Icons.favorite,
              ),
              BottomNavigationElement(
                activeScreen: activeScreen,
                screen: 4,
                onTap: () {},
                label: "Profile",
                icon: Icons.person,
              ),
            ],
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: width * .60,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black87,
                          ),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: appSecondColor,
                        ),
                        controller: _searchController,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(appSecondColor),
                                  foregroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.black87),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                              onPressed: () {},
                              icon: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.notifications_none_outlined,
                                  size: 25,
                                ),
                              )),
                          const SizedBox(width: 5,),
                          IconButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(appSecondColor),
                                  foregroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.black87),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                              onPressed: () {},
                              icon: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 25,
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: height * .20,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/p2.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: height * .20,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20),
                        width: width * .5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "New spring collection",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                            const Text(
                              "Explore the new spring collection",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.white),
                                  foregroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.blue),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                              child: const Text('Shop now'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                BrandSelector(),
                const SizedBox(
                  height: 5,
                ),
                const PopularProducts(),
                const SizedBox(
                  height: 5,
                ),
                const RecommandedProducts()
              ],
            ),
          ),
        )));
  }
}
