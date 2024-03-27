import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/main_page.dart';
import 'package:airplane/ui/widgets/cotum_button.dart';
import 'package:flutter/material.dart';

class SuccessChechoutPage extends StatelessWidget {
  const SuccessChechoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image_success.png",
              height: 150,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Well Booked 😍",
              style:
                  blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
            ),
            Text(
              "Are you ready to explore the new\nworld of experiences?",
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            ),
            CostumButton(
              margin: EdgeInsets.only(top: 50),
              width: 220,
              title: "My Bookings",
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                    (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
