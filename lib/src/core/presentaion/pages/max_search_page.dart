import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/pages/page_template.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/check_box_groub_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/location_inspect_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/max_search_card_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/slider_kilo_meter_widget.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/slider_money_widget.dart';
import 'package:real_estate_app/src/user_managment/presentaion/widgets/button.dart';

class MaxSearchPage extends StatelessWidget {
  const MaxSearchPage({super.key});
  static String get route => "MaxSearchPage";

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Column(
          children: [
            LocationInspectWidget(onTap: () {}, locationName: "الموقع"),
            MaxSearchCardWidget(
              title: "نوع العقار",
              child: CheckGroupBoxWidget(
                  onTap: (checked) {
                    print(checked);
                  },
                  data: const ['منزل', 'فيلة', 'بناء', 'شقة', 'عربي']),
            ),
            MaxSearchCardWidget(
              title: "الغرف",
              child: CheckGroupBoxWidget(
                  onTap: (checked) {
                    print(checked);
                  },
                  data: const ['2 - 3', '5 - 4', '6 - 7'],
                  column: 4),
            ),
            MaxSearchCardWidget(
              title: "البيئة",
              child: CheckGroupBoxWidget(
                  addAll: false,
                  onTap: (checked) {
                    print(checked);
                  },
                  data: const ['مدينة', 'ريف', 'بستان', 'متنزه', 'قرية']),
            ),
            MaxSearchCardWidget(
              title: "النوع",
              child: CheckGroupBoxWidget(
                  addAll: false,
                  onTap: (checked) {
                    print(checked);
                  },
                  data: const [
                    'شراء',
                    'أجار',
                  ]),
            ),
            MaxSearchCardWidget(
              title: "بعد المنطقة",
              child: SliderKiloMeterWidget(
                onChanged: (start, end) {
                print("$start $end");

                },
              ),
            ),
            MaxSearchCardWidget(
              title: "مجال الدفع",
              child: SliderMoneyWidget(
                onChanged: (start, end) {
                  print("$start $end");
                },
              ),
            ),
            Button(name: "بحث",onTap: () {
              
            },)
          ],
        ),
      ),
    );
  }
}
