import 'package:flutter/material.dart';
import 'package:real_estate_app/colors.dart';

class TextFont18Widget extends StatelessWidget {
  const TextFont18Widget(
      {super.key, required this.title, this.color});
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(

      title,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        
        color: color ?? appPrimaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
