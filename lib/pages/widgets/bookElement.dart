
import 'package:book_catalogue_crud/models/book.dart';
import 'package:flutter/material.dart';

class BookElement extends StatelessWidget{
  final Book book;

  const BookElement({
    Key?key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
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
    );
  }
}