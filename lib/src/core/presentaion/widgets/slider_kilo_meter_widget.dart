import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class SliderKiloMeterWidget extends StatefulWidget {
  SliderKiloMeterWidget({super.key, required this.onChanged});
  Function(int start, int end) onChanged;
  @override
  State<SliderKiloMeterWidget> createState() => _SliderKiloMeterWidgetState();
}

class _SliderKiloMeterWidgetState extends State<SliderKiloMeterWidget> {
  RangeValues _values = const RangeValues(100, 900);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextMeduimWidget(
            title:
                "من  ${_values.start.round()} متر    إلى   ${_values.end.round()} متر"),
        RangeSlider(
          // labels: RangeLabels("${_values.start.round()}\$", "${ _values.end.round()}\$",),
          onChanged: (value) {
            _values = value;
            widget.onChanged(_values.start.round(), _values.end.round());
            setState(() {});
          },
          divisions: 18,
          min: 100,
          max: 1000,
          values: _values,
        ),
      ],
    );
  }
}
