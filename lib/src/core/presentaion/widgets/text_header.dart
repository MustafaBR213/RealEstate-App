import 'package:flutter/material.dart';
import 'package:real_estate_app/colors.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key, required this.title, this.color,this.fontWeight});
  final String title;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? appPrimaryColor,
        fontSize: 24,
        fontWeight:fontWeight?? FontWeight.w700,
      ),
    );
  }
}
