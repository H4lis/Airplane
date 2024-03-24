import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costum_text_form_field.dart';
import 'package:airplane/ui/widgets/cotum_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get\nyour next journey",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget sectionInput() {
      Widget nameInput() {
        return CostumTextFormField(
          title: "Full Name",
          hintText: "Your Full Name",
        );
      }

      Widget emailInput() {
        return CostumTextFormField(
          title: "Email Address",
          hintText: "Your Email Address",
        );
      }

      Widget passwordInput() {
        return CostumTextFormField(
          obscureText: true,
          title: "Password",
          hintText: "Your Password",
        );
      }

      Widget hobyInput() {
        return CostumTextFormField(title: "Hobby", hintText: "Your Hobby");
      }

      Widget submitButton() {
        return CostumButton(
          title: "Get Started",
          onPressed: () {
            Navigator.pushNamed(context, "/bonus");
          },
        );
      }

      Widget tecButton() {
        return Container(
          margin: EdgeInsets.only(
            top: 50,
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

      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 50),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobyInput(),
            submitButton(),
            tecButton()
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            sectionInput(),
          ],
        ),
      ),
    );
  }
}
