import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/stars_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class BorkerMoreInfoWidget extends StatelessWidget {
  const BorkerMoreInfoWidget({super.key,required this.imagUrl,required this.name,this.onPressedMore,required this.onPressedPhone,required this.stars});
  final String name;
  final int stars;
  final String? imagUrl;
  final void Function()? onPressedPhone;
  final void Function()? onPressedMore;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(imagUrl==null)
       const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/broker.png", ),
        ),
        if(imagUrl!=null)
         CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imagUrl!),
        ),
                   const SizedBox(width: 10,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         const TextMeduimWidget(title: "مالك العقار",fontWeight: FontWeight.w400,),
         SizedBox(
          width: MediaQuery.of(context).size.width-114,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            TextMeduimWidget(title: name,fontWeight: FontWeight.w400,),
           const SizedBox(width: 10,),
            StarsWidget(rangeStars: stars),
            IconButton(onPressed:onPressedPhone , icon: Icon(Icons.call_outlined,color: Theme.of(context).primaryColor,))
            ,IconButton(onPressed:onPressedMore , icon: Icon(Icons.more_outlined,color: Theme.of(context).primaryColor,))
         
           ],),
         )
        ],)
      ],
    );
  }
}
