import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CostumTextFormField extends StatelessWidget {
  final title;
  final hintText;
  bool obscureText;
  CostumTextFormField(
      {super.key,
      required this.title,
      required this.hintText,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: regular, fontSize: 14),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(
                    defaultRadius,
                  )),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
          )
        ],
      ),
    );
  }
}
