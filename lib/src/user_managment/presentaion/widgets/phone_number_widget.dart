import 'package:extended_phone_number_input/consts/enums.dart';
import 'package:extended_phone_number_input/phone_number_controller.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';

class PhoneNumberWidget extends StatelessWidget {
   PhoneNumberWidget({super.key});
 late PhoneNumberInputController _controller;

  @override
  Widget build(BuildContext context) {
    _controller=PhoneNumberInputController(context);
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child:PhoneNumberInput(controller:_controller,allowPickFromContacts: false,countryListMode: CountryListMode.dialog,initialCountry: "TR", border:InputBorder.none,)
    );
  }
}
