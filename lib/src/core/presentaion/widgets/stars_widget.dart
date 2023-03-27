import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({super.key,required this.rangeStars});
  final int rangeStars;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for(int i=0;i<=rangeStars;i++)
          _getStarOn
          ,
          for(int j=rangeStars+1;j<5;j++)
          _getStarOff

        ],
      ),
      
    );
  }
  Widget get _getStarOn=>SvgPicture.asset("assets/star_on.svg",height: 12,width: 13,fit: BoxFit.scaleDown,);
  Widget get _getStarOff=>SvgPicture.asset("assets/star_off.svg",height: 12,width: 13,fit: BoxFit.scaleDown,);

}
