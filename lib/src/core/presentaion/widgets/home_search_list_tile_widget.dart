import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_header.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class HomeSearchListTileWidget extends StatelessWidget {
  const HomeSearchListTileWidget({super.key, this.imagUrl ,required this.cityName,required this.kiloMeter,required this.name});
  final String? imagUrl;
  final String name;
  final String kiloMeter;
 final String cityName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [ imagUrl == null
            ? SizedBox(
              width: 161,
              height: 107,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/home1.png",
                    width: 161,
                    height: 107,
                    fit: BoxFit.cover,
                  ),
                ),
            )
            : ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imagUrl!,
                  width: 161,
                  height: 107,
                  fit: BoxFit.cover,
                )),
             const   SizedBox(width: 34,),
         Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeader(title: name),
           Row(
            mainAxisSize: MainAxisSize.min,
            children: [
             SvgPicture.asset("assets/kilo_meter.svg"),
            const SizedBox(width: 10,),
            TextMeduimWidget(title: kiloMeter),
           ],),
           Row(
                      mainAxisSize: MainAxisSize.min,
    
            children: [
             SvgPicture.asset("assets/mark_map.svg"),
                       const SizedBox(width: 10,),
    
            TextMeduimWidget(title: cityName)
           ],)
          ],
        ),
      ]),
    );
  }
}
