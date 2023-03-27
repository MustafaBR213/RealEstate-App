import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_header.dart';

class DisplayFeatuerCadWidget extends StatelessWidget {
  const DisplayFeatuerCadWidget({super.key, required this.title,required this.child,this.onTapSeeMore});
  final String title;
  final Widget child;
  final void Function()? onTapSeeMore;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        children: [
          SizedBox(
            height: 46,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextHeader(title: title),
                InkWell(
                  onTap:onTapSeeMore ,
                  child: SvgPicture.asset("assets/see_more.svg")),
              ],
            ),
          ),
         const SizedBox(height: 5,),
          Expanded(child: child)
        ],
      ),
    );
  }
}
