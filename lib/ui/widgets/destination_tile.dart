import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  final name;
  final city;
  final imageurl;
  final rating;
  const DestinationTile(
      {super.key,
      required this.name,
      required this.city,
      required this.imageurl,
      this.rating = 0.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(image: AssetImage(imageurl))),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  city,
                  style:
                      greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                ),
              ],
            ),
          ),
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/icon_star.png")),
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            rating.toString(),
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          ),
        ],
      ),
    );
  }
}
