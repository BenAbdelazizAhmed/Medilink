import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Inscriptiondeux extends StatefulWidget {
  final String firstname;
  final String lastname;
  final String email;

  const Inscriptiondeux({
    Key? key,
    required this.firstname,
    required this.lastname,
    required this.email,
  }) : super(key: key);

  @override
  _InscriptiondeuxState createState() => _InscriptiondeuxState();
}

class _InscriptiondeuxState extends State<Inscriptiondeux> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _bloodTypeController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();
  String initialCountry = 'TN'; // Initial country set to Tunisia
  PhoneNumber number = PhoneNumber(isoCode: 'TN');

Future<void> registerUser() async {
  try {
    String firstName =widget.firstname; 
    String lastName =widget.lastname; 
    String email =widget.email;
    String password =_passwordController.text;
    String picturePath = "ddd"; 
    String role = "patient";  
    print('ddd');
    final response = await http.post(
      Uri.parse("http://10.0.2.2:3005/api/auth/register"),
      headers: {
         "Accept": "application/json",
          "Content-Type": "application/json",
      },
      body: jsonEncode({
        "firstname": firstName,
        "lastname": lastName,
        "email":email,
        "password": "password",
        "picturePath": "picturePath",
        "phone":_phoneNumberController.text,
        "PhoneNumber":_phoneNumberController.text,
        "role": "patient",
      }),
    );
    print('j');
    print('Response status code: ${response.statusCode}');
    
    if (response.statusCode == 201) {
      print('Registration successful');
      // Traitez ici la réponse en cas de succès
    } else {
      print('Registration failed');
      final errorResponse = jsonDecode(response.body);
      print('Error: $errorResponse');
      // Traitez ici les erreurs de la requête HTTP
    }
  } catch (e) {
    print('Error: $e');
    // Capturez les exceptions lors de la requête HTTP
   
  }
}
  File? _image;
 Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 250.h,
                      width: double.infinity,
                      color: Color.fromARGB(255, 227, 241, 247),
                      child: Image.asset(
                        'lib/Images/hama.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.r),
                          topRight: Radius.circular(45.r),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Complete your Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Manrope',
                              color: Color(0xff4491f9),
                              fontSize: ScreenUtil().setSp(25),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Don't worry, only you can see your personal data. No one else will be able to see it.",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Manrope',
                              color: Colors.black54,
                              fontSize: ScreenUtil().setSp(16),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 10.h),
                          Center(
                            child: GestureDetector(
                              onTap: _pickImage,
                              child: CircleAvatar(
                                radius: ScreenUtil().setWidth(55),
                                backgroundColor: Colors.blueAccent.withOpacity(0.11),
                                child: _image != null
                                  ? ClipOval(
                                      child: Image.file(
                                        _image!,
                                        fit: BoxFit.cover,
                                        width: ScreenUtil().setWidth(100),
                                        height: ScreenUtil().setHeight(100),
                                      ),
                                    )
                                  : Icon(
                                      Icons.person,
                                      size: ScreenUtil().setSp(70),
                                      color: Colors.blue,
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: TextFormField(
                              controller: _birthdateController,
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900), // Adjust the first date as needed
                                  lastDate: DateTime.now(),
                                );
                                if (pickedDate != null) {
                                  _birthdateController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
                                }
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuillez entrer votre date de naissance';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffE5E7EB).withOpacity(0.2),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Color(0xffE5E7EB).withOpacity(0.8), width: 1.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                                ),
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Color(0xffA1A8B0).withOpacity(0.5),
                                ),
                                labelText: "Date de naissance",
                                labelStyle: TextStyle(color: Color(0xffA1A8B0), fontFamily: 'Manrope'),
                              ),
                            ),
                          ),
                          Padding(
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
                              initialValue: number,
                              textFieldController: _phoneNumberController,
                              formatInput: false,
                              keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
                              inputDecoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffE5E7EB).withOpacity(0.2),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Color(0xffE5E7EB).withOpacity(0.8), width: 1.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(20)),
                                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                                ),
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: Color(0xffA1A8B0).withOpacity(0.5),
                                ),
                                labelText: "Numéro de téléphone",
                                labelStyle: TextStyle(color: Color(0xffA1A8B0), fontFamily: 'Manrope'),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuillez entrer votre numéro de téléphone';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(35)),
                          SizedBox(
                            height: ScreenUtil().setHeight(45),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff4491f9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(ScreenUtil().setSp(20)),
                                ),
                              ),
                              onPressed: registerUser,
                              child: Center(
                                child: Text(
                                  'Complete Profile',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: ScreenUtil().setSp(14),
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ); }
}
