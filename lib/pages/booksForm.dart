import 'package:book_catalogue_crud/pages/widgets/customButton.dart';
import 'package:book_catalogue_crud/pages/widgets/customTextFormField.dart';
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
    //bookAuthorController?.dispose();
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
    final bookTitleField = CustomTextFormField(
        label: "Título",
        controller: bookTitleController as TextEditingController
    );
    final bookISBNField = TextFormField(
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
      keyboardType: TextInputType.number,
    );
    final bookFirstNameField = CustomTextFormField(
        label: "Nombre",
        controller: bookFirstNameController as TextEditingController
    );
    final bookLastNameField = CustomTextFormField(
        label: "Apellido",
        controller: bookLastNameController as TextEditingController
    );
    final bookCountryField = CustomTextFormField(
        label: "País de origen",
        controller: bookCountryOfPubController as TextEditingController
    );
    final bookImageURLField = CustomTextFormField(
        label: "URL de la imagen",
        controller: bookCoverPageURLController as TextEditingController
    );
    final bookEditorialField = CustomTextFormField(
        label: "Editorial",
        controller: bookEditorialController as TextEditingController
    );
    const bookGenreField = DropDown(
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
        hidesUnderline: true
    );

    final registerButton = CustomButton(
      width: 270,
      height: 50,
      color: const Color(0xFF4B39EF),
      elevation: 3,
      text: "Registrar",
      fontSize: 18,
      fontWeight: FontWeight.normal,
      onPressed: ()=>{},
    );

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
            child: ListView(
              //mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      child: bookTitleField,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: bookISBNField
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(30, 16, 16, 0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("Autor"),
                      ),/*TextFormField(
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
                      ),*/
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: bookFirstNameField,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: bookLastNameField,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: bookCountryField
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: bookImageURLField
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: bookEditorialField,
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: bookGenreField
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(100, 24, 100, 16),
                  child: registerButton,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}