import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  final text;
  const InterestItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Image.asset(
            "assets/icon_check.png",
            height: 16,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: blackTextStyle.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
