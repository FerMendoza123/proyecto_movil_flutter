/*import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';*/
import 'package:book_catalogue_crud/dropDown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Book catalogue",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegistroWidget(),
    );
  }
}

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({Key? key}) : super(key: key);

  @override
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  String? teamSelectValue;
  TextEditingController? emailAddressController;
  TextEditingController? userNameController;
  TextEditingController? titleRoleController1;
  TextEditingController? titleRoleController2;
  TextEditingController? titleRoleController3;
  TextEditingController? titleRoleController4;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    userNameController = TextEditingController();
    titleRoleController1 = TextEditingController();
    titleRoleController2 = TextEditingController();
    titleRoleController3 = TextEditingController();
    titleRoleController4 = TextEditingController();
  }

  @override
  void dispose() {
    emailAddressController?.dispose();
    userNameController?.dispose();
    titleRoleController1?.dispose();
    titleRoleController2?.dispose();
    titleRoleController3?.dispose();
    titleRoleController4?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Online Library',
          /*Sustituir por otra clase de estilos*/
          /*style:
           FlutterFlowTheme.of(context).title2.override(
            fontFamily: 'Outfit',
            color: Color(0xFF14181B),
            fontSize: 28,
            fontWeight: FontWeight.normal,
          ),*/
        ),
        /*actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.close_rounded,
                color: Color(0xFF57636C),
                size: 30,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
          ),
        ],*/
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/emptyState@2x.png',
                            ).image,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              color: Color(0x3A000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(120),
                            child: Image.asset(
                              'assets/images/libros.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: userNameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Título:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(         *//*Sustituir por otra clase de estilos*//*
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),*/
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        /*style: FlutterFlowTheme.of(context).bodyText1.override(      *//*Sustituir por otra clase de estilos*//*
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),*/
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: emailAddressController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Autor:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(         *//*Sustituir por otra clase de estilos*//*
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),*/
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        /*style: FlutterFlowTheme.of(context).bodyText1.override(              *//*Sustituir por otra clase de estilos*//*
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),*/
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: titleRoleController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'ISBN:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(               *//*Sustituir por otra clase de estilos*//*
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),*/
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        /*style: FlutterFlowTheme.of(context).bodyText1.override(                  *//*Sustituir por otra clase de estilos*//*
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),*/
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: titleRoleController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Editorial:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(                 *//*Sustituir por otra clase de estilos*//*
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),*/
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        /*style: FlutterFlowTheme.of(context).bodyText1.override(               *//*Sustituir por otra clase de estilos*//*
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),*/
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: titleRoleController3,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Año:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(                *//*Sustituir por otra clase de estilos*//*
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),*/
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        /*style: FlutterFlowTheme.of(context).bodyText1.override(                  *//*Sustituir por otra clase de estilos*//*
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),*/
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: titleRoleController4,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Idioma:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(                  *//*Sustituir por otra clase de estilos*//*
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),*/
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        /*style: FlutterFlowTheme.of(context).bodyText1.override(                   *//*Sustituir por otra clase de estilos*//*
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),*/
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: DropDown(
                          options: ['Científico', 'Ciencia Ficción', 'Romance'],
                          width: double.infinity,
                          height: 60,
                          hintText: 'Género',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFF57636C),
                            size: 15,
                          ),
                          fillColor: Colors.white,
                          elevation: 2,
                          borderColor: Color(0xFFF1F4F8),
                          borderWidth: 2,
                          borderRadius: 8,
                          margin: EdgeInsetsDirectional.fromSTEB(24, 4, 12, 4),
                          hidesUnderline: true),
                      /*FlutterFlowDropDown<String>(                                 *//*Sustituir por otro widget de menu dropdown*//*
                        options: ['Científico', 'Ciencia Ficción', 'Romance'],
                        onChanged: (val) =>
                            setState(() => teamSelectValue = val),
                        width: double.infinity,
                        height: 60,
                        textStyle:
                        FlutterFlowTheme.of(context).bodyText1.override(                           *//*Sustituir por otra clase de estilos*//*
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        hintText: 'Género',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFF57636C),
                          size: 15,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Color(0xFFF1F4F8),
                        borderWidth: 2,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(24, 4, 12, 4),
                        hidesUnderline: true,
                      ),*/
                    ),
                  ],
                ),
                /*Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                  child: FFButtonWidget(                                                     *//*Sustituir por otro widget de boton*//*
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
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
