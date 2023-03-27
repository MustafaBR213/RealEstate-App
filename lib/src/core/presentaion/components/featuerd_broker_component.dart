import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/display_featuer_card_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/featured_broker_card_widget.dart';

class FeatuerdBrokerComponent extends StatelessWidget {
  const FeatuerdBrokerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplayFeatuerCadWidget(
      title: "وسيط عقاري",
      onTapSeeMore: () {
        
      },
      child: ListView.separated(
        physics:const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return  InkWell(
            
            child: FeaturedBrokerCardWidget(name: "عبدالكريم ${index+1} " , stars: index%5,isLiked: false,)
           , onTap: () {
              //open User page when click
            },
            );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 21,),
      ),
    );
  }
}
