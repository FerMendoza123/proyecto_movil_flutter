import 'package:book_catalogue_crud/pages/widgets/customButton.dart';
import 'package:book_catalogue_crud/pages/widgets/customTextFormField.dart';
import 'package:book_catalogue_crud/pages/widgets/dropDown.dart';
import 'package:book_catalogue_crud/services/booksService.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'booksList.dart';

class BooksFormEditWidget extends StatefulWidget {
  //final QueryDocumentSnapshot<Object> document;

  final double ISBN ;
  final String docId;
  final String firstName;
  final String lastName;
  final String country;
  final String URL;
  final String editorial;
  final String genre;
  final String languaje;
  final String title;
  final int year;

  const BooksFormEditWidget({
    Key? key,
    required this.firstName,
    required this.URL,
    required this.editorial,
    required this.country,
    required this.genre,
    required this.ISBN,
    required this.languaje,
    required this.lastName,
    required this.title,
    required this.year,
    required this.docId,
  }) : super(key: key);

  @override
  _BooksFormEditWidgetState createState() => _BooksFormEditWidgetState();
}

class _BooksFormEditWidgetState extends State<BooksFormEditWidget> {
  TextEditingController? bookISBNController;
  //TextEditingController? bookAuthorController;
  TextEditingController? bookFirstNameController;
  TextEditingController? bookLastNameController;
  TextEditingController? bookCountryOfPubController;
  TextEditingController? bookCoverPageURLController;
  TextEditingController? bookEditorialController;
  TextEditingController? bookGenreController;
  TextEditingController? bookOriginalLangController;
  TextEditingController? bookTitleController;
  TextEditingController? bookYearOfPubController;



  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    bookISBNController = TextEditingController();
    bookFirstNameController = TextEditingController();
    bookLastNameController = TextEditingController();
    bookCountryOfPubController = TextEditingController();
    bookCoverPageURLController = TextEditingController();
    bookEditorialController = TextEditingController();
    bookGenreController = TextEditingController();
    bookOriginalLangController = TextEditingController();
    bookTitleController = TextEditingController();
    bookYearOfPubController = TextEditingController();
    //if(widget.document.data().toString().contains("ISBN")){
      //bookISBNController?.text = widget.document["ISBN"].toString();
    //}

    bookYearOfPubController?.text = widget.year.toString();
    bookOriginalLangController?.text = widget.languaje;
    bookEditorialController?.text = widget.editorial;
    bookCoverPageURLController?.text = widget.URL;
    bookCountryOfPubController?.text = widget.country;
    bookLastNameController?.text = widget.lastName;
    bookFirstNameController?.text = widget.firstName;
    bookISBNController?.text = widget.ISBN.toString();
    bookTitleController?.text = widget.title;
    bookGenreController?.text = widget.genre;
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
    bookGenreController?.dispose();
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
    final bookGenreField = DropDown(
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
        hidesUnderline: true,
        controller: bookGenreController as TextEditingController,
    );

    final editButton = CustomButton(
      width: 270,
      height: 50,
      color: const Color(0xFF4B39EF),
      elevation: 3,
      text: "Guardar",
      fontSize: 18,
      fontWeight: FontWeight.normal,
      onPressed: () async {
        if (formKey.currentState!.validate()) {
          var response = await BookService.updateBook(
            docId: widget.docId,
            originalLang: bookOriginalLangController?.text as String,
            countryOfPub: bookCountryOfPubController?.text as String,
            coverPageURL: bookCoverPageURLController?.text as String,
            editorial: bookEditorialController?.text as String,
            firstName: bookFirstNameController?.text as String,
            genre: bookGenreController?.text as String,
            ISBN: double.parse(bookISBNController?.text as String),
            lastname: bookLastNameController?.text as String,
            //originalLang: bookOriginalLangController?.text as String,
            title: bookTitleController?.text as String,
            //yearOfPub: bookYearOfPubController?.value as int,
          );
          if (response.code == 200) {
            Navigator.pushAndRemoveUntil<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => BooksListWidget(),
              ),
                  (route) => false, //if you want to disable back feature set to false
            );
          } else {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(response.message.toString()),
                  );
                });
          }
        }
      },
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
                              'imagemptyState@2x.png',
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
                            child:CachedNetworkImage(
                              imageUrl: widget.URL,
                              height: 100,
                              width: 100,
                              placeholder: (context,url) => CircularProgressIndicator(),
                              errorWidget: (context,url,error) => new Image.asset(
                                "images/book-g1d3fa4f77_640.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: bookGenreField
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(100, 24, 100, 16),
                  child: editButton,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}