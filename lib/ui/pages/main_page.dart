import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/costum_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget CostumNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 30,
          ),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              18,
            ),
            color: kWhiteColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CostumBottomNavigationItem(
                  imageUrl: 'icon_home', isSelected: true),
              CostumBottomNavigationItem(
                  imageUrl: 'icon_booking', isSelected: false),
              CostumBottomNavigationItem(
                  imageUrl: 'icon_card', isSelected: false),
              CostumBottomNavigationItem(
                  imageUrl: 'icon_settings', isSelected: false),
            ],
          ),
        ),
      );
    }

    ;
    return Scaffold(
      backgroundColor: kBagroundColor,
      body: Stack(
        children: [
          buildContent(),
          CostumNavigation(),
        ],
      ),
    );
  }
}
