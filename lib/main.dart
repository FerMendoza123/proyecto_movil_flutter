
import 'package:book_catalogue_crud/pages/booksForm.dart';
import 'package:book_catalogue_crud/pages/booksList.dart';
import 'package:book_catalogue_crud/pages/usersForm.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MyApp());
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
      home: UserFormWidget(register: false,)//const UserFormWidget(register: false),
    );
  }
}


