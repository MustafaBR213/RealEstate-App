import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/colors.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class LocationInspectWidget extends StatelessWidget {
  const LocationInspectWidget({super.key,required this.onTap,required this.locationName});
  final void Function()? onTap;
 final String locationName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        onTap:onTap ,
        title: TextMeduimWidget(title: locationName,color:appPlaceHolderColor ,),
        trailing: Icon(Icons.gps_fixed,color: Theme.of(context).primaryColor,),
        leading: SvgPicture.asset("assets/mark_map.svg"),
        ),

    );
  }
}