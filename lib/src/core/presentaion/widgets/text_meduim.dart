import 'package:flutter/material.dart';
import 'package:real_estate_app/colors.dart';

class TextMeduimWidget extends StatelessWidget {
  const TextMeduimWidget({super.key, required this.title, this.color,this.fontWeight});
  final String title;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: color ?? appPrimaryColor,
        fontSize: 16,
        fontWeight:fontWeight?? FontWeight.w700,
      ),
    );
  }
}
