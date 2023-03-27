import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_header.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class MaxSearchCardWidget extends StatelessWidget {
  const MaxSearchCardWidget({super.key,required this.child,required this.title});
final String title;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 157,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextHeader(title:title, ),
          const SizedBox(height: 10,),
          Expanded(child: child)
        ],
      ),
    );
  }
}
