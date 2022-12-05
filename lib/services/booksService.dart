import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference collection = _firestore.collection('books');

class BookService{
  static Future<Response> addBook({
    required String ISBN,
    required List<String> author,
    required String firstName,
    required String lastname,
    required String countryOfPub,
    required String coverPageURL,
    required String editorial,
    required Matrix4 genres,
    required String originalLang,
    required String title,
    required String yearOfPub,
  })async{
    Response response = Response();
    DocumentReference documentReference = collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "ISBN":ISBN,
      "author":author,
      "firstName":firstName,
      "lastName":lastname,
      "countryOfPub":countryOfPub,
      "coverPageURL":coverPageURL,
      "editorial":editorial,
      "genres":genres,
      "originalLang":originalLang,
      "title":title,
      "yearOfPub":yearOfPub,
    };

    var result = await documentReference.set(
        data
    ).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully added to the database";
    }).catchError((e){
      response.code = 500;
      response.message = e;
    });

    return response;
  }


  /*static Future<Response> logUser({
    required String title,
  }) async{
    Response response = Response();


    var result = await collection.where('title', isEqualTo: title).get().then(
            (value){
          if(value.size>0){
            response.code=200;
            response.message="Book Found";
          } else {
            response.code=404;
            response.message="Book not Found";
          }
        },
        onError: (e){
          response.code = 500;
          response.message = e;
        }
    );

    return response;
  }*/
}