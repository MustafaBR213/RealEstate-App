import 'package:flutter/material.dart';
import 'package:real_estate_app/colors.dart';

class InputText extends StatefulWidget {
  const InputText(
      {super.key,
      this.hintColor,
      this.isPassword,
      required this.placeHolder,
      this.icon,
      required this.textEditingController});
  final String placeHolder;
  final Widget? icon;
  final TextEditingController textEditingController;
  final bool? isPassword;
  final Color? hintColor;
  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool hidtext = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        obscureText: hidtext,
        controller: widget.textEditingController,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: widget.icon,
            suffixIcon: widget.isPassword != null
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        hidtext = !hidtext;
                      });
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: appPlaceHolderColor,
                    ))
                : null,
            filled: true,
            fillColor: Colors.white,
            hintText: widget.placeHolder,
            hintStyle:  TextStyle(color:widget.hintColor?? appPlaceHolderColor)),
      ),
    );
  }
}
