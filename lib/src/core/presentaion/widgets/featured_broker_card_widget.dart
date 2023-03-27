import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/stars_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_f18.dart';

class FeaturedBrokerCardWidget extends StatelessWidget {
  const FeaturedBrokerCardWidget(
      {super.key, this.imageUrl, required this.name, required this.stars,required this.isLiked});
  final String? imageUrl;
  final String name;
  final int stars;
  final bool isLiked;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      height: 188,
      width: 139,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imageUrl == null)
                const SizedBox(
                  width: 81,
                  height: 81,
                  child: CircleAvatar(
                      radius: 81,
                      backgroundImage: AssetImage(
                        "assets/broker.png",
                      )),
                ),
              if (imageUrl != null)
                CircleAvatar(
                    radius: 81,
                    backgroundImage: NetworkImage(imageUrl!, scale: 1.0)),
              TextFont18Widget(title: name),
              const SizedBox(
                height: 12,
              ),
              StarsWidget(rangeStars: stars),
             
            ],
          ),
        ),
         Positioned(
              top: 1,
              right: 1,
              child: LoveButtonWidget(isLiked: isLiked))
      ]),
    );
  }
}

class LoveButtonWidget extends StatefulWidget {
  LoveButtonWidget({super.key, required this.isLiked, this.onTap});
  bool isLiked;
  void Function()? onTap;
  @override
  State<LoveButtonWidget> createState() => _LoveButtonWidgetState();
}

class _LoveButtonWidgetState extends State<LoveButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (widget.onTap != null) widget.onTap!();
          widget.isLiked = !widget.isLiked;
          setState(() {});
        },
        child: SvgPicture.asset(
            widget.isLiked ? "assets/like_on.svg" : "assets/like_off.svg"));
  }
}
