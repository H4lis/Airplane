import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  final int status;

  const SeatItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    bagroundColor() {
      switch (status) {
        case 0:
          return kUnavailable;
        case 1:
          return kavailable;
        default:
          return kPrimaryColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kUnavailable;
        case 1:
          return kPrimaryColor;
        default:
          return kPrimaryColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return SizedBox();

        default:
          return Center(
            child: Text(
              "YOU",
              style:
                  whiteTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
          );
      }
    }

    return Container(
      margin: EdgeInsets.only(top: 16),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: borderColor()),
          borderRadius: BorderRadius.circular(
            15,
          ),
          color: bagroundColor()),
      child: child(),
    );
  }
}
