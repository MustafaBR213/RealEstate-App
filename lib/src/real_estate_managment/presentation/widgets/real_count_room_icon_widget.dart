import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class RoomIcon extends StatelessWidget {
  const RoomIcon({super.key,required this.iconPath,required this.name});
  final String iconPath;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            height: 46,
            width: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(iconPath)),
          const SizedBox(width: 20,),
          TextMeduimWidget(title: name,fontWeight: FontWeight.w400,)
        ],
      ),
    );
  }
}
