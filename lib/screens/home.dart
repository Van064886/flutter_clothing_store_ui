import 'package:clothing_store_ui/widgets/bottom_navigation_element.dart';
import 'package:flutter/material.dart';

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
          color: const Color.fromARGB(153, 236, 236, 236),
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
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: width * .6,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor: Colors.grey,
                    ),
                    controller: _searchController,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.grey),
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.black),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none_outlined)),
                    IconButton(
                        style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.grey),
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.black),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_outlined)),
                  ],
                )
              ],
            )
          ],
        )));
  }
}
