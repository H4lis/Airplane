import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_chehckout_page.dart';
import 'package:airplane/ui/widgets/booking_details_item.dart';
import 'package:airplane/ui/widgets/cotum_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  Widget route() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/image_checkout.png",
              height: 65,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CGK",
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Tangerang",
                    style:
                        greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "TLC",
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Ciliwung",
                    style:
                        greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget bookingDetails() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/image_destination1.png"))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lake Ciliwung",
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        Text(
                          "Tangerang",
                          style: greyTextStyle.copyWith(
                              fontSize: 14, fontWeight: light),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icon_star.png")),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    "4.8",
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "Booking Details",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const BookingDetailsItem(title: "Traveler", valueText: "2 person"),
            const BookingDetailsItem(title: "Seat", valueText: "A3, B3"),
            BookingDetailsItem(
                title: "Insurance", valueText: "YES", valueVolor: kGreenColor),
            BookingDetailsItem(
                title: "Refundable", valueText: "NO", valueVolor: kRedColor),
            const BookingDetailsItem(title: "VAT", valueText: "45%"),
            const BookingDetailsItem(
                title: "Price", valueText: "IDR 8.500.690"),
            BookingDetailsItem(
                title: "Grand Total",
                valueText: "IDR 12.000.000",
                valueVolor: kPrimaryColor),
          ],
        ));
  }

  Widget paymentsDetails() {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: Text(
              "Payment Details",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/image_card.png",
                    ),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/icon_plane.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        " Pay",
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "IDR 80.400.000",
                      style: blackTextStyle.copyWith(
                          fontWeight: medium, fontSize: 18),
                    ),
                    Text(
                      "Current Balance",
                      style: greyTextStyle.copyWith(
                          fontWeight: light, fontSize: 14),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget payButton() {
    return CostumButton(
      title: "Pay Now",
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SuccessChechoutPage(),
            ));
      },
    );
  }

  Widget tecButton() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Terms and Conditions",
          style: greyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 16,
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBagroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
        children: [
          route(),
          bookingDetails(),
          paymentsDetails(),
          payButton(),
          tecButton()
        ],
      ),
    );
  }
}
