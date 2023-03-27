import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/src/core/presentaion/widgets/text_meduim.dart';

class CheckGroupBoxWidget extends StatefulWidget {
  CheckGroupBoxWidget(
      {super.key,
      required this.data,
      required this.onTap,
      this.addAll = true,
      this.column = 3});
  List<String> data;
  bool addAll;
  int column;
  Function(List<String> checked) onTap;

  @override
  State<CheckGroupBoxWidget> createState() => _CheckGroupBoxWidgetState();
}

class _CheckGroupBoxWidgetState extends State<CheckGroupBoxWidget> {
  late List<String> _list=[];
  List<String> selectedItems = [];
  late List<bool> _isSelectedItems;
  @override
  void initState() {
    if (widget.addAll) {
      _list .add('الكل');
    }
    _list.addAll(widget.data);
    _isSelectedItems = _list.map((e) => false).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics:const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widget.column,
          mainAxisExtent: 32,
          mainAxisSpacing: 25,
          crossAxisSpacing: 43),
      itemBuilder: (context, index) {
        return CheckBoxItem(
          name: _list[index],
          isSelected: _isSelectedItems[index],
          onTap: (p0) {

            if (index == 0 &&widget.addAll) {
              
              _isSelectedItems = _isSelectedItems.map((e) => false).toList();
              _isSelectedItems[0] = true;
            }
            if (index != 0||!widget.addAll) {
              if(widget.addAll){
              _isSelectedItems[0] = false;}
              _isSelectedItems[index] = !_isSelectedItems[index];
            }
            getChecked();

            widget.onTap(selectedItems);

            setState(() {});
          },
        );
      },
      itemCount: _list.length,
    );
  }

  void getChecked() {
    selectedItems = [];
    for (int i = 0; i < _list.length; i++) {
      if (_isSelectedItems[i]) {
        selectedItems.add(_list[i]);
      } else {
        selectedItems.remove(_list[i]);
      }
    }
  }
}

class CheckBoxItem extends StatelessWidget {
  const CheckBoxItem(
      {super.key,
      required this.isSelected,
      required this.name,
      required this.onTap});
  final String name;
  final void Function(String) onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onTap(name);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  isSelected ? Theme.of(context).primaryColor : Colors.white),
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isSelected) SvgPicture.asset("assets/check_box.svg"),
              if (isSelected)
                const SizedBox(
                  width: 5,
                ),
              TextMeduimWidget(
                title: name,
                color:
                    isSelected ? Colors.white : Theme.of(context).primaryColor,
              ),
            ],
          ),
        ));
  }
}
