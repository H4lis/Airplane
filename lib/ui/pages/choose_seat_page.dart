import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/check_out_page.dart';
import 'package:airplane/ui/widgets/cotum_button.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Text(
        "Select Your\nFavorite Seat",
        style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
      );
    }

    Widget checkoutButton() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: CostumButton(
          title: "Continue to Checkout",
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(),
                ));
          },
        ),
      );
    }

    Widget seatStatus() {
      return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Image.asset(
              "assets/icon_available.png",
              width: 16,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "Available",
              style: blackTextStyle.copyWith(fontSize: 14),
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/icon_selected.png",
              width: 16,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "Selected",
              style: blackTextStyle.copyWith(fontSize: 14),
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              "assets/icon_unavailable.png",
              width: 16,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "Unavailable",
              style: blackTextStyle.copyWith(fontSize: 14),
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  child: Center(
                    child: Text(
                      "A",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  child: Center(
                    child: Text(
                      "B",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  child: Center(
                    child: Text(
                      "",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  child: Center(
                    child: Text(
                      "C",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  child: Center(
                    child: Text(
                      "D",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 0),
                SeatItem(status: 0),
                SizedBox(
                  width: 48,
                  child: Center(
                    child: Text(
                      "1",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(status: 1),
                SeatItem(status: 0),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 1),
                SeatItem(status: 1),
                SizedBox(
                  width: 48,
                  child: Center(
                    child: Text(
                      "2",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(status: 1),
                SeatItem(status: 0),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 2),
                SeatItem(status: 2),
                SizedBox(
                  width: 48,
                  child: Center(
                    child: Text(
                      "3",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(status: 1),
                SeatItem(status: 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 1),
                SeatItem(status: 0),
                SizedBox(
                  width: 48,
                  child: Center(
                    child: Text(
                      "4",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(status: 1),
                SeatItem(status: 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 1),
                SeatItem(status: 1),
                SizedBox(
                  width: 48,
                  child: Center(
                    child: Text(
                      "5",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(status: 0),
                SeatItem(status: 1),
              ],
            ),

            //Note Your Seat
            Container(
              margin: EdgeInsets.only(top: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your seat",
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "A3, B3",
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "IDR 540.000.000",
                        style: purpleTextstyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 55),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
