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
        body: const SafeArea(child: Column(
          children: [
            
          ],
        )));
  }
}
