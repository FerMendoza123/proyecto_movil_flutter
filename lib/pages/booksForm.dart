import 'package:book_catalogue_crud/pages/widgets/customButton.dart';
import 'package:book_catalogue_crud/pages/widgets/dropDown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksFormWidget extends StatefulWidget {
  const BooksFormWidget({Key? key}) : super(key: key);

  @override
  _BooksFormWidgetState createState() => _BooksFormWidgetState();
}

class _BooksFormWidgetState extends State<BooksFormWidget> {
  TextEditingController? bookISBNController;
  TextEditingController? bookAuthorController;
  TextEditingController? bookFirstNameController;
  TextEditingController? bookLastNameController;
  TextEditingController? bookCountryOfPubController;
  TextEditingController? bookCoverPageURLController;
  TextEditingController? bookEditorialController;
  TextEditingController? bookGenresController;
  TextEditingController? bookOriginalLangController;
  TextEditingController? bookTitleController;
  TextEditingController? bookYearOfPubController;

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    bookISBNController = TextEditingController();
    bookAuthorController = TextEditingController();
    bookFirstNameController = TextEditingController();
    bookLastNameController = TextEditingController();
    bookCountryOfPubController = TextEditingController();
    bookCoverPageURLController = TextEditingController();
    bookEditorialController = TextEditingController();
    bookGenresController = TextEditingController();
    bookOriginalLangController = TextEditingController();
    bookTitleController = TextEditingController();
    bookYearOfPubController = TextEditingController();
  }

  @override
  void dispose() {
    bookISBNController?.dispose();
    bookAuthorController?.dispose();
    bookFirstNameController?.dispose();
    bookLastNameController?.dispose();
    bookCountryOfPubController?.dispose();
    bookCoverPageURLController?.dispose();
    bookEditorialController?.dispose();
    bookGenresController?.dispose();
    bookOriginalLangController?.dispose();
    bookTitleController?.dispose();
    bookYearOfPubController?.dispose();
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
        title: const Text(
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
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F4F8),
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: bookTitleController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Título:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(                  *//*Sustituir por otra clase de estilos*//*
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: bookISBNController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'ISBN:',
                          hintStyle:
                          const TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                          ),
                          /*FlutterFlowTheme.of(context).bodyText2.override(         *//* LISTO : Sustituir por otra clase de estilos*//*
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: bookAuthorController,
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: bookFirstNameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Primer nombre:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(               *//*Sustituir por otra clase de estilos*//*
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: bookLastNameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Apellido:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(                 *//*Sustituir por otra clase de estilos*//*
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: bookCountryOfPubController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'País:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(                *//*Sustituir por otra clase de estilos*//*
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: bookCoverPageURLController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'URL:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(                  *//*Sustituir por otra clase de estilos*//*
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: bookEditorialController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Editorial:',
                          /*hintStyle:
                          FlutterFlowTheme.of(context).bodyText2.override(                  *//*Sustituir por otra clase de estilos*//*
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
                    const Padding(
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
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                  child: CustomButton(
                    width: 270,
                    height: 50,
                    color: const Color(0xFF4B39EF),
                    elevation: 3,
                    text: "Registrar",
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    onPressed: ()=>{},
                  ),/*FFButtonWidget(                                                     *//*Sustituir por otro widget de boton*//*
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}