/*
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
 */
import 'package:book_catalogue_crud/pages/booksForm.dart';
import 'package:book_catalogue_crud/pages/booksFormEdit.dart';
import 'package:book_catalogue_crud/pages/widgets/customButton.dart';
import 'package:book_catalogue_crud/services/booksService.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BooksListWidget extends StatefulWidget {
  const BooksListWidget({Key? key}) : super(key: key);

  @override
  _BooksListWidgettState createState() => _BooksListWidgettState();
}

class _BooksListWidgettState extends State<BooksListWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Stream<QuerySnapshot> collectionReference = BookService.readBooks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFBFBFB),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0xFF483AE6),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //SelectionArea
                 Container(
                      child: Text(
                        'Book Catalogue',
                        textAlign: TextAlign.center,
                        /*style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFFBFBFB),
                          fontSize: 17,
                        ),*/
                      )),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.my_library_add,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => BooksFormWidget(),
                  ),
                      (route) =>
                  true, //if you want to disable back feature set to false
                );
              },
            )
          ],
          centerTitle: false,
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: StreamBuilder(
            stream: collectionReference,
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
              if(snapshot.hasData){
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: snapshot.data!.docs.map((e){
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 5, 8, 5),
                        child: Container(
                          width: double.infinity,
                          height: 177,
                          decoration: BoxDecoration(
                            color: Color(0xFFFBFBFB),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: e["coverPageURL"],
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
                                    Container(
                                      width: 182,
                                      height: 102,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFBFBFB),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 5, 0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFBFBFB),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Container(
                                                  child: Text(
                                                    e.data().toString().contains("title")?
                                                    e["title"].toString()
                                                        :
                                                    ""
                                                    ,
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                    /*style: FlutterFlowTheme.of(context)
                                            .bodyText1,*/
                                                  )),
                                            ),
                                          )
                                          ,
                                          e.data().toString().contains("firstName") && e["author"]["firstName"] != ""
                                              || e.data().toString().contains("lastName") && e["author"]["lastName"] != ""?
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 5, 0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFBFBFB),
                                              ),
                                              child: Container(
                                                  child: Text(
                                                    e.data().toString().contains("firstName") && e["author"]["firstName"] != ""
                                                        && e.data().toString().contains("lastName") && e["author"]["lastName"] != ""?
                                                    'Author: ' + e["author"]["firstName"] + " " + e["author"]["lastName"]
                                                        :
                                                    e.data().toString().contains("firstName") && e["author"]["firstName"] != ""?
                                                    'Author: ' + e["author"]["firstName"]
                                                        :
                                                    'Author: ' + e["author"]["lastName"]
                                                    ,
                                                    /*style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),*/
                                                  )),
                                            ),
                                          )
                                              :
                                          Container()
                                          ,
                                          e.data().toString().contains("editorial") && e["editorial"] != ""?
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 5, 0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFBFBFB),
                                              ),
                                              child: Container(
                                                  child: Text(
                                                    'Editorial: ' + e["editorial"],
                                                    /*style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),*/
                                                  )),
                                            ),
                                          )
                                              :
                                          Container()
                                          ,
                                          e.data().toString().contains("countryOfPub") && e["countryOfPub"] != ""
                                              || e.data().toString().contains("yearOfPub") && e["yearOfPub"]!= ""?
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 5, 0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFBFBFB),
                                              ),
                                              child: Container(
                                                  child: Text(
                                                    e.data().toString().contains("countryOfPub") && e["countryOfPub"] != ""
                                                        && e.data().toString().contains("yearOfPub") && e["yearOfPub"]!= "" ?
                                                    'Publication: ' + e["countryOfPub"] + "(" + e["yearOfPub"] + ")"
                                                        :
                                                    e.data().toString().contains("countryOfPub")?
                                                    'Publication: ' + e["countryOfPub"]
                                                        :
                                                    'Publication: ' + "(" + e["yearOfPub"] + ")"
                                                    ,
                                                    /*style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),*/
                                                  )),
                                            ),
                                          )
                                              :
                                          Container()
                                          ,
                                          e.data().toString().contains("genre") && e["genre"] != ""?
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                5, 0, 5, 0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFFBFBFB),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Container(
                                                  child: Text(
                                                    'Genre: ' + e["genre"],
                                                    /*style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                        ),*/
                                                  )),
                                            ),
                                          )
                                              :
                                          Container()
                                          ,
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                        width: 100,
                                        height: 50,
                                        text: "Eliminar",
                                        color: const Color(0xFF4B39EF),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        elevation: 3,
                                        onPressed: () async{
                                          var response =
                                          await BookService.deleteBook(docId: e.id);
                                          if (response.code != 200) {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    content:
                                                    Text(response.message.toString()),
                                                  );
                                                });
                                          }
                                        }
                                    ),
                                    SizedBox(width: 20),
                                    CustomButton(
                                        width: 100,
                                        height: 50,
                                        text: "Editar",
                                        color: const Color(0xFF4B39EF),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        elevation: 3,
                                        onPressed: (){
                                          Navigator.pushAndRemoveUntil<dynamic>(
                                            context,
                                            MaterialPageRoute<dynamic>(
                                              builder: (BuildContext context) => BooksFormEditWidget(
                                                docId: e.id,
                                                title: e.data().toString().contains("title")? e["title"] : "",
                                                year: e.data().toString().contains("yearOfPub")? e["yearOfPub"] : 0,
                                                country: e.data().toString().contains("countryOfPub")? e["countryOfPub"] : "",
                                                editorial: e.data().toString().contains("editorial")? e["editorial"] : "",
                                                firstName: e.data().toString().contains("firstName")? e["author"]["firstName"] : "",
                                                genre: e.data().toString().contains("genre")? e["genre"] : "",
                                                ISBN: e.data().toString().contains("ISBN")? e["ISBN"] : 0,
                                                languaje: e.data().toString().contains("originalLang")? e["originalLang"] : "",
                                                lastName: e.data().toString().contains("lastName")? e["author"]["lastName"] : "",
                                                URL: e.data().toString().contains("coverPageURL")? e["coverPageURL"] : "",
                                              ),
                                            ),
                                                (route) => true, //if you want to disable back feature set to false
                                          );
                                        }
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              }
              return Container();
            }
          ),
        ),
      ),
    );
  }
}


