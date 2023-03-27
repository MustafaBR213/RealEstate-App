import 'package:flutter/material.dart';
import 'package:real_estate_app/colors.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.width, required this.name, this.onTap});
  final double? width;
  final String name;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
            color: appPrimaryColor, borderRadius: BorderRadius.circular(10)),
        height: 57,
        width: width ?? 297,
        alignment: Alignment.center,
        child: TextMeduimWidget(
          title: name,
          color: Colors.white,
        ),
      ),
    );
  }
}
