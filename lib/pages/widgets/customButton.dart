import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final double width;
  final double height;
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final double elevation;
  final void Function() onPressed;

  const CustomButton ({Key?key,
    required this.width,
    required this.height,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.elevation,
    required this.onPressed
  }) : super(key: key);


  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: elevation,
            primary: color,
          ),
          onPressed: onPressed,
          child: Text(text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
      ),
    );
  }
}
/*FFButtonWidget(                                                     *//*Sustituir por otro widget de boton*//*
  onPressed: () {                                                         //
    print('Button pressed ...');                                          //
  },                                                                      //
  text: 'Registrar',                                                      //
  options: FFButtonOptions(                                               //
    width: 270,                                                           //
    height: 50,                                                           //
    color: Color(0xFF4B39EF),                                             //
    textStyle:                                                            //
    FlutterFlowTheme.of(context).subtitle1.override(                       *//*Sustituir por otra clase de estilos*//*
      fontFamily: 'Outfit',                                               //
      color: Colors.white,                                                //
      fontSize: 18,                                                       //
      fontWeight: FontWeight.normal,                                      //
    ),
    elevation: 3,
    borderSide: BorderSide(
      color: Colors.transparent,
      width: 1,
    ),
  ),
),*/