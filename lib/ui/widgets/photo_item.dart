import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final imageUrl;
  const PhotoItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          image: DecorationImage(
                              image: AssetImage(imageUrl))),
                    );
  }
}