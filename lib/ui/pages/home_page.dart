import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy,\nKezia Anne",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    "Where to fly today?",
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/image_profile.jpg"))),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Destnationcard(
                name: "Lake Ciliwung",
                city: "Tangerang",
                imageurl: "assets/image_destination1.png",
                rating: 4.4,
              ),
              Destnationcard(
                name: "White Houses",
                city: "Spain",
                imageurl: "assets/image_destination2.png",
                rating: 4.4,
              ),
              Destnationcard(
                name: "Hill Heyo",
                city: "Monaco",
                imageurl: "assets/image_destination3.png",
                rating: 4.4,
              ),
              Destnationcard(
                name: "Menarra",
                city: "Japan",
                imageurl: "assets/image_destination4.png",
                rating: 4.4,
              ),
              Destnationcard(
                name: "Payung Teduh",
                city: "Singapoera",
                imageurl: "assets/image_destination5.png",
                rating: 4.4,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              rating: 4.5,
              city: "Singajara",
              name: "Danau Beratan",
              imageurl: "assets/image_destination6.png",
            ),
            DestinationTile(
              rating: 4.5,
              city: "Sydney Opera",
              name: "Australia",
              imageurl: "assets/image_destination7.png",
            ),
            DestinationTile(
              rating: 4.5,
              city: "Roma",
              name: "Italy",
              imageurl: "assets/image_destination8.png",
            ),
            DestinationTile(
              rating: 4.5,
              city: "Payung Teduh",
              name: "Singapore",
              imageurl: "assets/image_destination9.png",
            ),
            DestinationTile(
              rating: 4.5,
              city: "Hill Hey",
              name: "Monaco",
              imageurl: "assets/image_destination10.png",
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
