
import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final List<String> options;
  final double width;
  final double height;
  final String hintText;
  final Icon icon;
  final Color fillColor;
  final int elevation;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final EdgeInsetsGeometry margin;
  final bool hidesUnderline;
  final TextEditingController controller;
  //final Function onChange;

  const DropDown({Key?key,
    required this.options,
    required this.width,
    required this.height,
    required this.hintText,
    required this.icon,
    required this.fillColor,
    required this.elevation,
    required this.borderColor,
    required this.borderWidth,
    required this.borderRadius,
    required this.margin,
    required this.hidesUnderline,
    required this.controller
  }) : super(key: key);

  @override
  State<DropDown> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropDown> {
  String dropDownValue = '';

  @override
  void initState(){
    if(widget.controller.text != "")
      dropDownValue = widget.controller.text;
    else
      dropDownValue = widget.options.first;
  }
  @override
  Widget build(BuildContext context){
    return Container(
      height: widget.height,
      width: widget.width,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          value: dropDownValue,
          onChanged: (value){
            setState(() {
              dropDownValue = value as String;
              widget.controller.text = dropDownValue;
            });
          },
          hint: Text(widget.hintText),
          // buttonElevation: widget.elevation,
          icon: widget.icon,
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            border: Border.all(
                color: widget.borderColor,
                width: widget.borderWidth),
            color: widget.fillColor,
          ),
          items: widget.options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
  /*Widget build(BuildContext context) {
    return Padding(
        padding: widget.margin,
        child: DropdownButton<String>(
          value: dropDownValue,
          icon: widget.icon,
          elevation: widget.elevation,
          hint: Text(widget.hintText),
          itemHeight: widget.height,
          dropdownColor: widget.fillColor,
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropDownValue = value!;
            });
          },
          items: widget.options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
    );
  }*/
}