///import '../flutter_flow/flutter_flow_icon_button.dart';
///import '../flutter_flow/flutter_flow_theme.dart';
///import '../flutter_flow/flutter_flow_util.dart';
///import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:book_catalogue_crud/pages/widgets/customButton.dart';
import 'package:book_catalogue_crud/pages/widgets/customTextFormField.dart';
import 'package:book_catalogue_crud/services/usersService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:book_catalogue_crud/main.dart';

import 'booksForm.dart';
import 'booksList.dart';

class UserFormWidget extends StatefulWidget {
  final bool register;
  const UserFormWidget({
    Key? key,
    required this.register,
  }) : super(key: key);

  @override
  _UserFormWidgetState createState() => _UserFormWidgetState();
}

class _UserFormWidgetState extends State<UserFormWidget> {
  TextEditingController? userEmailAddressController;
  TextEditingController? userNameController;
  TextEditingController? userPasswordController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    userEmailAddressController = TextEditingController();
    userNameController = TextEditingController();
    userPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    userEmailAddressController?.dispose();
    userNameController?.dispose();
    userPasswordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final userNameField = CustomTextFormField(
        label: "Usuario",
        controller: userNameController as TextEditingController
    );
    final passwordField = CustomTextFormField(
        label: "Contraseña",
        controller: userPasswordController as TextEditingController,
    );
    final userEmailField = CustomTextFormField(
        label: "Email",
        controller: userEmailAddressController as TextEditingController
    );
    final registerButton = CustomButton(
      width: 270,
      height: 50,
      text: 'Registrar',
      color: Color(0xFF4B39EF),
      fontSize: 18,
      fontWeight: FontWeight.normal,
      elevation: 3,
      onPressed: () async {
        if (formKey.currentState!.validate()) {
          var response = await UserService.addUser(
              email: userEmailAddressController?.text as String,
              name: userNameController?.text as String,
              password: userPasswordController?.text as String);
          if (response.code == 200) {
            Navigator.pushAndRemoveUntil<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => UserFormWidget(register: false),
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
    final loginButton = CustomButton(
      width: 270,
      height: 50,
      text: 'Iniciar sesión',
      color: Color(0xFF4B39EF),
      fontSize: 18,
      fontWeight: FontWeight.normal,
      elevation: 3,
      onPressed: () async {
        if (formKey.currentState!.validate()) {
          var response = await UserService.logUser(
            email: userEmailAddressController?.text as String,
            password: userPasswordController?.text as String,
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
    final createAccountButton = CustomButton(
      width: 270,
      height: 50,
      text: 'Create Account',
      color: Color(0xFF4B39EF),
      fontSize: 18,
      fontWeight: FontWeight.normal,
      elevation: 3,
      onPressed: () async{
        Navigator.pushAndRemoveUntil<dynamic>(
          context,
          MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => UserFormWidget(register: true),
          ),
              (route) => true, //if you want to disable back feature set to false
        );
      },
    );



    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Online Library',
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'images/images/emptyState@2x.png',
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
                              'images/computer-science-g0484927a2_640.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    widget.register?
                      Padding(
                        padding:const EdgeInsetsDirectional.fromSTEB(16, 206, 16, 0),
                        child: userNameField,
                      )
                    :
                      Container()
                    ,
                    Padding(
                      padding: widget.register?
                        EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0)
                      :
                        EdgeInsetsDirectional.fromSTEB(16, 206, 16, 0)
                      ,
                      child: userEmailField,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: passwordField,
                    ),

                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                  child:
                  widget.register?
                    registerButton
                  :
                    Column(
                      children: [
                        createAccountButton,
                        SizedBox(height: 10),
                        loginButton,
                      ],
                    )
                  ,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
