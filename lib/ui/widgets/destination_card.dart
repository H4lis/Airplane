import 'package:airplane/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class Destnationcard extends StatelessWidget {
  final name;
  final city;
  final imageurl;
  final rating;
  const Destnationcard(
      {super.key,
      required this.name,
      required this.city,
      required this.imageurl,
      this.rating = 0.0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(left: defaultMargin),
        padding: EdgeInsets.all(10),
        height: 323,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    imageurl,
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 30,
                  width: 54,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(18)),
                    color: kWhiteColor,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icon_star.png")),
                        ),
                      ),
                      Text(
                        rating.toString(),
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                        fontWeight: medium, fontSize: 18),
                  ),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
