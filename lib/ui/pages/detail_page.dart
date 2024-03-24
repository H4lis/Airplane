import 'dart:math';

import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/interest_item.dart';
import 'package:airplane/ui/widgets/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  Widget costumShadow() {
    return Container(
      margin: const EdgeInsets.only(top: 236),
      height: 214,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black.withOpacity(0.9)])),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/icon_emblem.png",
            height: 24,
          ),

          //title
          Container(
            margin: const EdgeInsets.only(
              top: 256,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Ciliwung",
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        "Tangerang",
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/icon_star.png",
                  height: 20,
                ),
                Text(
                  " 0.0",
                  style:
                      whiteTextStyle.copyWith(fontSize: 14, fontWeight: medium),
                ),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                  style: blackTextStyle.copyWith(fontSize: 14, height: 2),
                ),

                // Photo
                const SizedBox(
                  height: 20,
                ),
                Text("Photo",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold)),
                const SizedBox(
                  height: 6,
                ),
                const Row(
                  children: [
                    PhotoItem(
                      imageUrl: "assets/image_photo1.png",
                    ),
                    PhotoItem(
                      imageUrl: "assets/image_photo2.png",
                    ),
                    const PhotoItem(
                      imageUrl: "assets/image_photo3.png",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Photo",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold)),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    InterestItem(text: "Kids Park"),
                    InterestItem(text: "Honor Bridge"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InterestItem(text: "City Museum"),
                    InterestItem(text: "Central Mall"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBagroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 450,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image_destination1.png"))),
              ),
              costumShadow(),
              content()
            ],
          )
        ],
      ),
    );
  }
}
