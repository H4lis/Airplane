import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class BookingDetailsItem extends StatelessWidget {
  final title;
  final valueText;
  final valueVolor;
  const BookingDetailsItem(
      {super.key, required this.title,  required this.valueText, this.valueVolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.asset(
            "assets/icon_check.png",
            width: 16,
          ),
          Text(
            "  $title",
            style: blackTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          Spacer(),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
                fontSize: 14, fontWeight: semiBold, color: valueVolor),
          )
        ],
      ),
    );
  }
}
