import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class CotogeryCardWidget extends StatelessWidget {
  const CotogeryCardWidget(

      {super.key, required this.imagePath, required this.name, this.onTap,required this.width});
  final String imagePath;
  final String name;
  final void Function()? onTap;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 87,
      width: width,
      child: Material(
        elevation: 3.4,
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imagePath,
                width: 26,
                height: 26,
                fit: BoxFit.scaleDown,
              ),
              TextMeduimWidget(title: name),
            ],
          ),
        ),
      ),
    );
  }
}
