///import '../flutter_flow/flutter_flow_icon_button.dart';
///import '../flutter_flow/flutter_flow_theme.dart';
///import '../flutter_flow/flutter_flow_util.dart';
///import '../flutter_flow/flutter_flow_widgets.dart';
import 'dart:html';
import './customButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:book_catalogue_crud/main.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController? emailAddressController;
  TextEditingController? userNameController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    userNameController = TextEditingController();
  }

  @override
  void dispose() {
    emailAddressController?.dispose();
    userNameController?.dispose();
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

          /*
          style: FlutterFlowTheme.of(context).title2.override(
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
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 6,
                              color: Color(0x3A000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
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
                      padding:const EdgeInsetsDirectional.fromSTEB(16, 206, 16, 0),
                      child: TextFormField(
                        controller: userNameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Usuario:',
                          hintStyle:
                              const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF57636C),
                              ),
                          /*
                          Sólo faltaría implementar font family
                          FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),*/
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

                        /*style:TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF14181B),
                          fontStyle: GoogleFonts.lato(fontStyle: FontStyle.normal),
                        ),*/
                        /*style: FlutterFlowTheme.of(context).bodyText1.override(
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
                          labelText: 'Contraseña:',
                          hintStyle:
                            const TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                fontFamily: 'Outfit',
                                color: Color(0xFF57636C),
                            ),
                          /*
                          FlutterFlowTheme.of(context).bodyText2.override(
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
                        /*style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF14181B),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),*/
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                  child: (

                  /*FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Iniciar sesión',
                    options: FFButtonOptions(
                      width: 270,
                      height: 50,
                      color: Color(0xFF4B39EF),
                      textStyle:
                      FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                    ),
                  ),*/
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
