/*
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
 */
import 'package:book_catalogue_crud/services/booksService.dart';
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
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 5, 8, 5),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFFFBFBFB),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                            'https://picsum.photos/seed/859/600',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
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
                                          'Title',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1,*/
                                        )),
                                  ),
                                ),
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
                                          'Author: Name Ex.',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),*/
                                        )),
                                  ),
                                ),
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
                                          'Editorial: Name Editorial',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),*/
                                        )),
                                  ),
                                ),
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
                                          'Publication: Mexico (2018)',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),*/
                                        )),
                                  ),
                                ),
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
                                          'Genres: Comedy, Fantasy',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),*/
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 5, 8, 5),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Color(0xFFFBFBFB),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                            'https://picsum.photos/seed/859/600',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
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
                                          'Title',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1,*/
                                        )),
                                  ),
                                ),
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
                                          'Author: Name Ex.',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),*/
                                        )),
                                  ),
                                ),
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
                                          'Editorial: Name Editorial',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),*/
                                        )),
                                  ),
                                ),
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
                                          'Publication: Mexico (2018)',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),*/
                                        )),
                                  ),
                                ),
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
                                          'Genres: Comedy, Fantasy',
                                          /*style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.normal,
                                          ),*/
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


