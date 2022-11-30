

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget{
  final String label;
  final TextEditingController controller;
  //final Function function;

  const CustomTextFormField({
    Key?key,
    required this.label,
    required this.controller,
    //required this.function,

  }) : super(key: key);


  @override
  Widget build(BuildContext context){
    return TextFormField(
      controller: controller,
      obscureText: false,
      decoration: InputDecoration(
        labelText: label+":",
        hintStyle:
        const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color(0xFF57636C),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFF1F4F8),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFF1F4F8),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0x00000000),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0x00000000),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding:
        const EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
      ),
      style: Theme.of(context).textTheme.bodyText1,
      textAlign: TextAlign.start,
    );
  }
}