import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:op/VerificationCode.dart'; // Assuming VerificationCode.dart is correctly imported

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  bool isSelectedEmail = false;
  bool isSelectedPhone = false;
  TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String _message = '';
  final GlobalKey<FormState> _formKey3 = GlobalKey<FormState>();

  // Function to call the Forgetpassword API
  Future<void> ForgetpasswordApi(String phoneNumber) async {
    final String loginUrl = "http://10.0.2.2:3005/api/otp/send";
    final Map<String, dynamic> loginData = {
      "phone": "+216$phoneNumber", // Adjusted to use the provided phoneNumber parameter
    };

    try {
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
        print(jsonDecode(response.body));
      } else {
        setState(() {
          if (response.statusCode == 400) {
            print('Error 400: ${response.body}');
            _message = 'Check your data';
          } else {
            print('Received response with status code: ${response.statusCode} and body: ${response.body}');
            _message = 'An error occurred';
          }
        });
      }
    } catch (e) {
      print('Error: $e');
    }
  }

Future<void> ForgetpasswordEmailApi(String email) async {
    final String loginUrl = "http://10.0.2.2:3005/api/send-mfacode";
    final Map<String, dynamic> loginData = {
      "email":email ,
      "password":"ahmed.benabdelaziz@esprim.tn" // Adjusted to use the provided phoneNumber parameter
    };

    try {
      print('ff');
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
        print(jsonDecode(response.body));
        print("eee");
      } else {
        setState(() {
          if (response.statusCode == 400) {
            print('Error 400: ${response.body}');
            _message = 'Check your data';
          } else {
            print('Received response with status code: ${response.statusCode} and body: ${response.body}');
            _message = 'An error occurred';
          }
        });
      }
    } catch (e) {
      print('Error: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    // Using ScreenUtil to make the UI responsive
    ScreenUtil.init(context, designSize: Size(375, 812), );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
            ),
            child: Stack(
              children: [
                Container(
                  height: 250.h,
                  width: 1.sw,
                  color: Color.fromARGB(255, 227, 241, 247),
                  child: Image.asset(
                    'lib/Images/hama.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 200.h,
                  child: Container(
                    width: 1.sw,
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                    ),
                    child: Form(
                      key: _formKey3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Forgot your Password?',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp, fontFamily: 'Inter'),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'Enter your email or your phone number, we will send you a confirmation code',
                            style: TextStyle(color: Color(0xffA1A8B0)),
                          ),
                          SizedBox(height: 15.h),
                          Container(
                            height: 45.h,
                            decoration: BoxDecoration(
                              color: Color(0xffE5E7EB).withOpacity(0.3),
                              border: Border.all(
                                color: Colors.blueAccent,
                                width: 0.1.w,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isSelectedEmail = true;
                                        isSelectedPhone = false;
                                      });
                                    },
                                    child: Container(
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: isSelectedEmail ? Colors.blueAccent : Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Email',
                                          style: TextStyle(
                                            color: isSelectedEmail ? Colors.white : Color(0xff4491f9),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isSelectedEmail = false;
                                        isSelectedPhone = true;
                                      });
                                    },
                                    child: Container(
                                      width: 140.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: isSelectedPhone ? Colors.blueAccent : Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Phone',
                                          style: TextStyle(
                                            color: isSelectedPhone ? Colors.white : Colors.black45,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          isSelectedEmail
                              ? Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  child: TextFormField(
                                    controller: _emailController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email';
                                      } else if (!EmailValidator.validate(value)) {
                                        return 'Please enter a valid email';
                                      } else if (_message != '') {
                                        return 'Check your data';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xffE5E7EB).withOpacity(0.2),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.blueAccent,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.blueAccent,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.blueAccent,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: Colors.blueAccent,
                                      ),
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                        color: Colors.blueAccent,
                                        fontFamily: 'Manrope',
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox(),
                          isSelectedPhone
                              ? Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  child: InternationalPhoneNumberInput(
                                    onInputChanged: (PhoneNumber number) {
                                      print(number.phoneNumber);
                                    },
                                    onInputValidated: (bool value) {
                                      print(value);
                                    },
                                    selectorConfig: SelectorConfig(
                                      selectorType: PhoneInputSelectorType.DROPDOWN,
                                    ),
                                    ignoreBlank: false,
                                    autoValidateMode: AutovalidateMode.disabled,
                                    selectorTextStyle: TextStyle(color: Colors.black),
                                    textFieldController: _phoneNumberController,
                                    formatInput: false,
                                    keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                                    inputDecoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xffE5E7EB).withOpacity(0.2),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.blueAccent,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.blueAccent,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.blueAccent,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                          width: 1.0.w,
                                        ),
                                      ),
                                      labelText: "Phone Number",
                                      labelStyle: TextStyle(
                                        color: Colors.blueAccent,
                                        fontFamily: 'Manrope',
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                )
                              : SizedBox(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                            child: SizedBox(
                              height: 45.h,
                              width: 1.sw,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff4491f9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey3.currentState?.validate() ?? false) {
                                    ForgetpasswordApi(_phoneNumberController.text);
                                    ForgetpasswordEmailApi(_emailController.text);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Verificationcode()),
                                    );
                                  }
                                },
                                child: Text(
                                  'Reset Password',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
