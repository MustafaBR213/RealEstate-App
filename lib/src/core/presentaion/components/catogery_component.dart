import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/catogery_card_widget.dart';

List<_IconCatogeryData> _list = [
  _IconCatogeryData(name: "خيمة", path: "assets/catogery/camp.svg"),
  _IconCatogeryData(name: "منزل", path: "assets/catogery/hom.svg"),
  _IconCatogeryData(name: "بناية", path: "assets/catogery/land.svg"),
  _IconCatogeryData(name: "محل", path: "assets/catogery/market.svg"),
];

class CatogeryComponent extends StatelessWidget {
  CatogeryComponent({super.key, required this.onSelecteditem});
  void Function(String? value) onSelecteditem;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double width = (size.width - 64) / 4;
    return SizedBox(
        height: 87,
        child: Row(
          children: [
            for (int index = 0; index < _list.length; index++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: InkWell(
                    onTap: () {
                      onSelecteditem(_list[index].name);
                      
                    },
                    child: CotogeryCardWidget(
                        width: width,
                        imagePath: _list[index].path,
                        name: _list[index].name)),
              ),
          ],
        ));
  }
}

class _IconCatogeryData {
  String name;
  String path;
  _IconCatogeryData({required this.name, required this.path});
}
