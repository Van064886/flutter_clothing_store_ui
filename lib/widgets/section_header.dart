import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final Function() action;
  const SectionHeader({super.key, required this.title, required this.action});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              child: Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          )),
          SizedBox(
            child: TextButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                onPressed: action,
                child: const Text(
                  "See more",
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                )),
          )
        ],
      ),
    );
  }
}
