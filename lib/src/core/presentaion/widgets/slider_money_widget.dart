import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class SliderMoneyWidget extends StatefulWidget {
  SliderMoneyWidget({super.key, required this.onChanged});
  Function(int start, int end) onChanged;
  @override
  State<SliderMoneyWidget> createState() => _SliderMoneyWidgetState();
}

class _SliderMoneyWidgetState extends State<SliderMoneyWidget> {
  RangeValues _values = const RangeValues(100, 900);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextMeduimWidget(
            title:
                "من  ${_values.start.round()} \$    إلى   ${_values.end.round()} \$"),
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
