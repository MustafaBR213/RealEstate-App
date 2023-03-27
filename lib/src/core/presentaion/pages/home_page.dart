import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/components/catogery_component.dart';
import 'package:real_estate_app/src/core/presentaion/components/featuerd_broker_component.dart';
import 'package:real_estate_app/src/core/presentaion/components/last_real_estate_components.dart';
import 'package:real_estate_app/src/core/presentaion/components/popular_component.dart';
import 'package:real_estate_app/src/core/presentaion/components/search_components.dart';
import 'package:real_estate_app/src/core/presentaion/pages/max_search_page.dart';
import 'package:real_estate_app/src/core/presentaion/pages/page_template.dart';
import 'package:real_estate_app/src/core/presentaion/pages/search_by_catogery_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String get route => "home";
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SearchComponent(
              onTapMore: () {
                Navigator.of(context).pushNamed(MaxSearchPage.route);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CatogeryComponent(onSelecteditem: (value) {
              Navigator.of(context).pushNamed(SeacrhByCatogeryPage.route);
            }),
            const FeatuerdBrokerComponent(),
            const LastRealEstateComponent(),
            const PopularRealEstateComponent()
          ],
        ),
      ),
    );
  }
}
