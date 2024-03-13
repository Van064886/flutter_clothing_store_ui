import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigationElement extends StatelessWidget {
  final int activeScreen;
  final int screen;
  final Function() onTap;
  final String label;
  final IconData icon;
  const BottomNavigationElement(
      {super.key,
      required this.activeScreen,
      required this.screen,
      required this.onTap,
      required this.label,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              onTap();
            },
            child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: activeScreen == screen
                        ? Colors.blue
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  icon,
                  color: activeScreen == screen ? Colors.white : Colors.black,
                )),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(label,
              style: TextStyle(
                  color: activeScreen == screen ? Colors.blue : Colors.black,
                  fontSize: 13))
        ],
      ),
    );
  }
}
