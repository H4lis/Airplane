import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CostumButton extends StatelessWidget {
  final title;
  double width;
  final Function() onPressed;
  final EdgeInsets margin;

  CostumButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 55,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: kPrimaryColor,
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          )),
    );
  }
}
