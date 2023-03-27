import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/borker_more_info_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/stars_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_header.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';
import 'package:real_estate_app/src/real_estate_managment/presentation/widgets/real_count_room_icon_widget.dart';
import 'package:real_estate_app/src/user_managment/presentaion/widgets/button.dart';

class ScreenArguments {
  final double price;
  final String currentDateTimeType;
  final String? imagUrl;
  final String title;
  final String cityName;
  final int starts;
  final int rooms;
  final int ketchens;
  final int offices;
  final int pathRooms;
  void Function()? onPressedMore;
  final String descrption;
  final int starsBroker;
  final String? borkerImageUrl;
  final String nameBorker;
  void Function()? onPressedPhone;
  ScreenArguments(
      {
      required this.currentDateTimeType,
      required this.imagUrl,
      required this.descrption,
      required this.title,
      required this.cityName,
      required this.starts,
      required this.ketchens,
      required this.offices,
      required this.pathRooms,
      required this.starsBroker,
      required this.rooms,
      required this.price,
      required this.onPressedMore,
      required this.nameBorker,
      this.borkerImageUrl,
      required this.onPressedPhone});
}

class RealEstatePage extends StatelessWidget {
  const RealEstatePage({
    super.key,
  });

  static String get route => "RealEstatePage";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: SizedBox(
                height: (size.height / 2) + 20,
                child: args.imagUrl == null
                    ? Image.asset(
                        "assets/home1.png",
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        height: (size.height / 2) + 20,
                        width: size.width,
                      )
                    : Image.network(args.imagUrl!, fit: BoxFit.cover),
              )),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 36, left: 22,right: 22),
              height: (size.height / 2),
              width: size.width,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadiusDirectional.vertical(
                      top: Radius.circular(20))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Button(
                          name: "استأجر",
                          width: 101,
                        ),
                        TextHeader(
                          title: "${args.currentDateTimeType}/${args.price}\$",
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextMeduimWidget(
                      title: args.title,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset("assets/mark_map.svg"),
                        const SizedBox(
                          width: 10,
                        ),
                        TextMeduimWidget(
                          title: args.cityName,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    TextMeduimWidget(
                      title: args.descrption,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    StarsWidget(rangeStars: args.starts),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RoomIcon(
                                iconPath: "assets/room.svg",
                                name: "${args.rooms} غرفة"),
                            RoomIcon(
                                iconPath: "assets/kitchen.svg",
                                name: "${args.ketchens} مطبخ")
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RoomIcon(
                                iconPath: "assets/office.svg",
                                name: "${args.offices} مكتب"),
                            RoomIcon(
                                iconPath: "assets/path_room.svg",
                                name: "${args.pathRooms} حمام")
                          ],
                        ),
                      ],
                    ),
                               const SizedBox(width: 10,),

                    BorkerMoreInfoWidget(
                        imagUrl: args.borkerImageUrl,
                        name: args.nameBorker,
                        onPressedPhone: args.onPressedPhone,
                        onPressedMore: args.onPressedMore,
                        stars: args.starsBroker)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
