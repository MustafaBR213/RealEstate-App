import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton(
      {super.key, required this.imgPth, required this.onTap});
  final String imgPth;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double width = size.width / 3-20;
    return Container(
      height: 49,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: InkWell(
          onTap: onTap,
          child: SvgPicture.asset(
            imgPth,
            fit: BoxFit.scaleDown,
            width: 22,
            height: 22,
          )),
    );
  }
}
