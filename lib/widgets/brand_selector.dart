// ignore_for_file: must_be_immutable

import 'package:clothing_store_ui/utils/constants.dart';
import 'package:clothing_store_ui/widgets/section_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BrandSelector extends StatelessWidget {
  BrandSelector({super.key});

  List<Widget> brands = List.generate(7, (index) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              color: appSecondColor, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Image.asset(
              "assets/images/s${index + 1}.png",
              width: 50,
              height: 50,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height * .16,
      child: Column(
        children: [
          SectionHeader(title: 'Shop By Category', action: () {}),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: brands,
            ),
          )
        ],
      ),
    );
  }
}
