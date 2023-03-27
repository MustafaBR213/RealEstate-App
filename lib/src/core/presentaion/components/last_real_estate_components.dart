import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/display_featuer_card_widget.dart';
import 'package:real_estate_app/src/real_estate_managment/presentation/pages/real_estate_page.dart';
import 'package:real_estate_app/src/real_estate_managment/presentation/pages/real_estate_template.dart';
import 'package:real_estate_app/src/real_estate_managment/presentation/widgets/real_estate_card_widgets.dart';

class LastRealEstateComponent extends StatelessWidget {
  const LastRealEstateComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplayFeatuerCadWidget(
      title: "أضيفت حديثاً",
      onTapSeeMore: () {
        Navigator.of(context).pushNamed(RealEstateTemplate.route,
            arguments: RealEstateTemplateArguments("أضيفت حديثاً"));
      },
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RealEstatePage.route,
                  arguments: ScreenArguments(
                    currentDateTimeType: "سنة",
                    imagUrl: null,
                    price: (600.0 + index),
                    cityName: "سوريا",
                    title: "يوجد في سوريا شارع سوريا",
                    descrption: "يوجد في سوريا شارع سوريا",
                    starts: index % 5,
                    ketchens: 1,
                    offices: 1,
                    pathRooms: 1,
                    rooms: 3,
                    nameBorker: "عبدالكريم",
                    onPressedMore: () {},
                    onPressedPhone: () {},
                    starsBroker: 4,
                    borkerImageUrl: null,
                     
                  ),
                );
              },
              child: RealEstateCardWidget(
                  cityNamy: "سوريا", price: (600.0 + index), stars: index % 5),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 22,
            );
          },
          itemCount: 6),
    );
  }
}
