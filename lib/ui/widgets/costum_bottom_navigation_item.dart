import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumBottomNavigationItem extends StatelessWidget {
  final imageUrl;
  bool isSelected;
  CostumBottomNavigationItem(
      {super.key, this.imageUrl, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Image.asset(
          "assets/$imageUrl.png",
          width: 24,
        ),
        Container(
          height: 2,
          width: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: isSelected == true ? kPrimaryColor : KTransparent),
        )
      ],
    );
  }
}
