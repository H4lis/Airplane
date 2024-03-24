import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/cotum_button.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_get_started.png'),
                    fit: BoxFit.fill)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore new world with us and let\nyourself get an amazing experiences",
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                CostumButton(
                  margin:
                      EdgeInsets.only(top: 50, bottom: 80, right: 77, left: 77),
                  title: "Get Started",
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
