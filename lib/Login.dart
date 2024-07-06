import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:op/Acceuil.dart';
import 'package:op/ForgetPassword.dart';
import 'package:op/Inscription.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _message = ''; // State variable for the error message

  Future<void> loginUser() async {
    final String loginUrl = "http://10.0.2.2:3005/api/auth/login";
    final Map<String, dynamic> loginData = {
      "email": _emailController.text,
      "password": _passwordController.text,
    };

    try {
      print('Sending request to $loginUrl');
      final response = await http.post(
        Uri.parse(loginUrl),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
        body: jsonEncode(loginData),
      );

      print('Received response with status code: ${response.statusCode}');
      if (response.statusCode == 200) {
        Map<String, dynamic> responseBody = jsonDecode(response.body);
        String token = responseBody['token'];
        Map<String, dynamic> user = responseBody['user'];

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Med()), // Assuming Med is your next screen
        );
      } else {
        setState(() {
          if (response.statusCode == 400) {
            print('Error 400: ${response.body}');
            _message = 'Vérifiez vos données';
          } else {
            print('Received response with status code: ${response.statusCode} and body: ${response.body}');
          }
        });
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(411, 731), );
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: _formKey,
                    child: Stack(
                      children: [
                        Container(
                          height: 250.h,
                          width: MediaQuery.of(context).size.width,
                          color: Color.fromARGB(255, 227, 241, 247),
                          child: Image.asset(
                            'lib/Images/hama.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 200.h,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45),
                                topRight: Radius.circular(45),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Manrope',
                                    color: Color(0xff4491f9),
                                    fontSize: 25.sp,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Sign in back to ',
                                      style: TextStyle(fontSize: 20.sp, fontFamily: 'Roboto'),
                                    ),
                                    Text(
                                      'Medilink',
                                      style: TextStyle(fontSize: 20.sp, fontFamily: 'Roboto'),
                                    )
                                  ],
                                ),
                                SizedBox(height: 15.h),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                                      child: TextFormField(
                                        controller: _emailController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Veuillez entrer votre email';
                                          } else if (!EmailValidator.validate(value)) {
                                            return 'Veuillez entrer un email correct';
                                          } else if (_message != '') {
                                            return "Vérifier votre donneés";
                                          }
                                          return null; // Return null if validation is successful
                                        },
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xffE5E7EB).withOpacity(0.2),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Color(0xffE5E7EB).withOpacity(0.8), width: 1.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Colors.red, width: 1.0),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Colors.red, width: 1.0),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.email_outlined,
                                            color: Color(0xffA1A8B0).withOpacity(0.5),
                                          ),
                                          labelText: "Email",
                                          labelStyle: TextStyle(color: Color(0xffA1A8B0), fontFamily: 'Manrope'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                                      child: TextFormField(
                                        controller: _passwordController,
                                        obscureText: true,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Veuillez entrer votre mot de passe';
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xffE5E7EB).withOpacity(0.2),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Color(0xffE5E7EB).withOpacity(0.2), width: 1.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Color(0xffE5E7EB).withOpacity(0.8), width: 1.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Colors.red, width: 1.0),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Colors.red, width: 1.0),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.lock_outline,
                                            color: Color(0xffA1A8B0).withOpacity(0.5),
                                          ),
                                          labelText: "Mot de passe",
                                          labelStyle: TextStyle(color: Color(0xffA1A8B0), fontFamily: 'Manrope'),
                                          suffixIcon: Icon(Icons.visibility, color: Color(0xffA1A8B0).withOpacity(0.5)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 13.h),
                                    Row(
                                      children: [
                                        Expanded(child: Container()),
                                        TextButton(
                                          child: Text(
                                            'Mot de passe oublié ?',
                                            style: TextStyle(color: Color(0xff4491f9)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Forgetpassword()),
                                            );
                                          },
                                          style: TextButton.styleFrom(
                                            foregroundColor: Color(0xff4491f9),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.h),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                      child: SizedBox(
                                        height: 45.h,
                                        width: MediaQuery.of(context).size.width,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xff4491f9),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                          onPressed: () {
                                            if (_formKey.currentState?.validate() ?? false) {
                                              loginUser();
                                            }
                                          },
                                          child: Center(
                                            child: Text(
                                              'Se Connecter',
                                              style: TextStyle(fontFamily: 'Poppins', fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Divider(color: Colors.black38, height: 2),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                            child: Text('Continuer avec', style: TextStyle(color: Color(0xff4491f9))),
                                          ),
                                          Expanded(
                                            child: Divider(color: Colors.black38, height: 2),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.blueAccent,
                                                width: 0.1,
                                              ),
                                            ),
                                            child: Image.asset(
                                              'lib/Images/facebook.png',
                                              height: 35.h,
                                              width: 85.w,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.blueAccent,
                                                width: 0.1,
                                              ),
                                            ),
                                            child: Image.asset(
                                              'lib/Images/pngegg.png',
                                              height: 35.h,
                                              width: 85.w,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.blueAccent,
                                                width: 0.1,
                                              ),
                                            ),
                                            child: Image.asset(
                                              'lib/Images/mac.png',
                                              height: 35.h,
                                              width: 85.w,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Vous n'avez pas de compte ? ",
                                          style: TextStyle(color: Color(0xffA1A8B0)),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => Inscri()),
                                            );
                                          },
                                          child: Text(
                                            "S'inscrire",
                                            style: TextStyle(color: Color(0xff4491f9)),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
