import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/stars_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class RealEstateCardWidget extends StatelessWidget {
  const RealEstateCardWidget(
      {super.key,
      this.imagUrl,
      required this.cityNamy,
      required this.price,
      this.clipFromRight = false,
      this.index=0,
      required this.stars});
  final String? imagUrl;
  final String cityNamy;
  final double price;
  final int stars;
  final bool clipFromRight;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: 186,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: clipFromRight
              ? const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(30))
              : const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(30))),
      child: Column(
        children: [
          Expanded(
              child: ClipRRect(
            borderRadius: clipFromRight
                ? const BorderRadius.only(topLeft: Radius.circular(30))
                : const BorderRadius.only(topRight: Radius.circular(30)),
            child: imagUrl == null
                ? Image.asset(
                    "assets/home1.png",
                    fit: BoxFit.cover,
                    width: 186,
                    height: 194,
                  )
                : Image.network(imagUrl!),
          )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 59,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextMeduimWidget(title: cityNamy),
                    TextMeduimWidget(title: "$price\$"),
                  ],
                ),
                StarsWidget(rangeStars: stars)
              ],
            ),
          )
        ],
      ),
    );
  }
}
