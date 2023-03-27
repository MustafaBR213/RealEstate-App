import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({super.key,required this.child,this.onTap});
  final Widget child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        actions: [
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(
            "assets/back.svg",
            fit: BoxFit.scaleDown,
                  ),
          ),],
        elevation: 0.0,
        leading: 
          InkWell(
            onTap:onTap ,
            child: SvgPicture.asset(
              "assets/notifcation.svg",
              fit: BoxFit.scaleDown,
            ),
          )
        ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}
