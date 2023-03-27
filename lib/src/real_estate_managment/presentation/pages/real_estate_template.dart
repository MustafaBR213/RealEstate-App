import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/pages/page_template.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_header.dart';
import 'package:real_estate_app/src/real_estate_managment/presentation/widgets/real_estate_card_widgets.dart';

class RealEstateTemplateArguments {
//  List<RealEstateModel>
  String title;
  RealEstateTemplateArguments(this.title);
}

class RealEstateTemplate extends StatelessWidget {
  const RealEstateTemplate({super.key});
  static String get route => "RealEstateTemplate";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as RealEstateTemplateArguments;

    return PageTemplate(
      child: Column(
        children: [
          SizedBox(
            height: 60,
            child: TextHeader(title: args.title),
          ),
          Expanded(
            child: GridView.builder(
              physics:const BouncingScrollPhysics(),
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing:20,
                crossAxisSpacing: 15,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return const RealEstateCardWidget(
                  clipFromRight: true,
                  cityNamy: "سوريا",
                  price: 200,
                  stars: 3,
                  imagUrl: null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
