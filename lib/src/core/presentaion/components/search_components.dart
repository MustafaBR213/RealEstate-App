import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/input_text.dart';

class SearchComponent extends StatelessWidget {
  SearchComponent({super.key, this.onChange, this.onTapMore});
  final void Function(String value)? onChange;

  final TextEditingController controllerSearch = TextEditingController();
  final void Function()? onTapMore;
  @override
  Widget build(BuildContext context) {
    controllerSearch.addListener(
      () {
        onChange ?? (controllerSearch.text);
      },
    );
    final size = MediaQuery.of(context).size;
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 29),
      height: 50,
      width: size.width,
      child: Row(
        children: [
         
          Expanded(
            child: InputText(
              hintColor: Colors.black.withOpacity(0.6),
              icon:SvgPicture.asset("assets/search.svg",fit: BoxFit.scaleDown,width: 18,height: 18,) ,
                placeHolder: "البحث", textEditingController: controllerSearch),
          ),
          const SizedBox(width: 10,),
           InkWell(
            
            onTap: onTapMore,
            child: Container(
              height: 49,
              width: 43,
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              
              child: SvgPicture.asset("assets/more_search.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
