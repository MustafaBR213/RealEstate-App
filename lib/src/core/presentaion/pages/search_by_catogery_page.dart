import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/components/search_components.dart';
import 'package:real_estate_app/src/core/presentaion/pages/page_template.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/home_search_list_tile_widget.dart';

class SeacrhByCatogeryPage extends StatelessWidget {
  const SeacrhByCatogeryPage({super.key});
  static String get route => "SeacrhByCatogeryPage";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: Column(
        children: [
          SearchComponent(
            onChange: (value) {},
          ),
          Expanded(
              child: ListView.separated(
                physics:const BouncingScrollPhysics(),
                padding:const EdgeInsets.only(top: 20),
                  itemBuilder: (context, index) {
                    return const HomeSearchListTileWidget(
                        cityName: "سوريا", kiloMeter: "كيلو متر", name: "منزل");
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: 20))
        ],
      ),
    );
  }
}
