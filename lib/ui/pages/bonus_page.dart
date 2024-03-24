import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/cotum_button.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        padding: EdgeInsets.all(defaultMargin),
        width: 300,
        height: 211,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                'assets/image_card.png',
              ),
            ),
            boxShadow: [
              BoxShadow(
                  color: kPrimaryColor.withOpacity(0.5),
                  offset: const Offset(
                    0,
                    10,
                  ),
                  blurRadius: 50)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Kezia Anne",
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_plane.png'))),
                ),
                Text(
                  'Pay',
                  style:
                      whiteTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              "Balance",
              style: whiteTextStyle.copyWith(
                fontWeight: light,
                fontSize: 14,
              ),
            ),
            Text(
              "IDR 280.000.000",
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 26,
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 91),
        child: Column(
          children: [
            Text(
              "Big Bonus 🎉",
              style:
                  blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We give you early credit so that\nyou can buy a flight ticket",
              style: greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget startButton() {
      return CostumButton(
        margin: EdgeInsets.only(top: 50, left: 77, right: 77),
        title: "Start Fly Now",
        onPressed: () {
          Navigator.pushNamed(context, "/main");
        },
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            startButton(),
          ],
        ),
      ),
    );
  }
}
