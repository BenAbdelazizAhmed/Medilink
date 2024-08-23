import 'dart:convert';
import 'dart:io';

import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
class Inscri extends StatefulWidget {
  const Inscri({Key? key}) : super(key: key);

  @override
  State<Inscri> createState() => _InscriState();
}

class _InscriState extends State<Inscri> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isHomme = false;
  bool isFemme = false;

  int currentStep = 0;
   final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _bloodTypeController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
    final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();
  String initialCountry = 'TN'; // Initial country set to Tunisia
  PhoneNumber number = PhoneNumber(isoCode: 'TN');

Future<void> registerUser() async {
  try {
    String firstName ="d"; 
    String lastName ="w"; 
    String email ="cc";
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
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  List<bool> isSelected = []; // List to keep track of selected items

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
    ScreenUtil.init(context, designSize: const Size(411, 731));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      color: Colors.white,
                    ),
                    Positioned(
                      child: Container(
                        height: 250.h,
                        width: 411.w,
                        color: const Color.fromARGB(255, 227, 241, 247),
                        child: Image.asset(
                          'lib/Images/hama.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200.h,
                      child: Container(
                        height: 600.h,
                        width: 410.w,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                          ),
                        ),
                        child: ListView(
                          children: [
                            SizedBox(height: 10,),
                         SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Form(
                                key: _formKey,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 440,
                                  child: _buildStepper(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: SizedBox(
                                height: 45,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff4491f9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState?.validate() ?? false) {
                                      // Actions on form validation
                                    }
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Complete Profile',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
CupertinoStepper _buildStepper() {
  final canCancel = currentStep > 0;
  final canContinue = currentStep < 3;

  return CupertinoStepper(
    currentStep: currentStep,
    onStepTapped: (step) => setState(() => currentStep = step),
    onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
    onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
    type: StepperType.horizontal,
    steps: [
      _buildStep(
        title: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: const Text('Connexion', style: TextStyle(color: Colors.blue)),
        ),
        subtitle: const Text('Enter your details'),
        content: Column(
          children: [
            _buildTextField(
              controller: _firstnameController,
              labelText: 'First Name',
              validatorText: 'Please enter your first name',
            ),
            const SizedBox(height: 20),
            _buildTextField(
              controller: _firstnameController,
              labelText: 'Last Name',
              validatorText: 'Please enter your last name',
            ),
            const SizedBox(height: 20),
            _buildTextField(
              controller: _emailController,
              labelText: 'Email',
              validatorText: 'Please enter your email',
              emailValidation: true,
            ),
            const SizedBox(height: 20),
            _buildTextField(
              controller: _passwordController,
              labelText: 'Password',
              validatorText: 'Please enter your password',
              obscureText: true,
            ),
          ],
        ),
        isActive: currentStep == 0,
        state: currentStep == 0 ? StepState.editing : StepState.complete,
      ),
      
      _buildStep(
        title: const Text('Email Verification', style: TextStyle(color: Colors.blue)),
        subtitle: const Text('Check your email'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.blueAccent.withOpacity(0.11),
                  child: _image != null
                      ? ClipOval(
                          child: Image.file(
                            _image!,
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        )
                      : Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.blue,
                        ),
                ),
              ),
            ),
            SizedBox(height: 10,),
               MultiSelectDropDown(
                    onOptionSelected: (List<ValueItem> selectedOptions) {},
                    options: const <ValueItem>[
                      ValueItem(label: 'Male', value: '1'),
                      ValueItem(label: 'Female', value: '2'),
                      ValueItem(label: 'Other', value: '3'),
                   
                    ],
                    selectionType: SelectionType.multi,
                    chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                    dropdownHeight: 150,
                    optionTextStyle: const TextStyle(fontSize: 16),
                    selectedOptionIcon: const Icon(Icons.check_circle),
                  ),   
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: _buildDatePicker(
                controller: _birthdateController,
                labelText: 'Date de naissance',
                validatorText: 'Veuillez entrer votre date de naissance',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: _buildPhoneNumberInput(
                labelText: 'Numéro de téléphone',
                validatorText: 'Veuillez entrer votre numéro de téléphone',
              ),
            ),
         
          ],
        ),
        isActive: currentStep == 1,
        state: currentStep == 1 ? StepState.editing : StepState.complete,
      ),
      _buildStep(
        title: const Text('Preferences', style: TextStyle(color: Colors.blue)),
        subtitle: const Text('Select your preferences'),
        content: Column(children: [
         Padding(
           padding: const EdgeInsets.only(bottom: 10.0),
           child: MultiSelectDropDown(
                onOptionSelected: (List<ValueItem> selectedOptions) {},
                options: const <ValueItem>[
                  ValueItem(label: 'Maried', value: '1'),
                  ValueItem(label: 'Not Maried', value: '2'),
              
                ],
                selectionType: SelectionType.multi,
                chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                dropdownHeight: 110,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
         ),    


          
              Padding(
           padding: const EdgeInsets.only(bottom: 10.0),
           child: MultiSelectDropDown(
                onOptionSelected: (List<ValueItem> selectedOptions) {},
                options: const <ValueItem>[
                  ValueItem(label: 'Private', value: '1'),
                  ValueItem(label: 'Self-employed', value: '2'),
                  ValueItem(label: 'Govt job', value: '3'),
                  ValueItem(label: 'Never worked', value: '5'),
                ],
                selectionType: SelectionType.multi,
                chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                dropdownHeight: 210,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
         ),   
               Padding(
           padding: const EdgeInsets.only(bottom: 10.0),
           child: MultiSelectDropDown(
                onOptionSelected: (List<ValueItem> selectedOptions) {},
                options: const <ValueItem>[
                  ValueItem(label: 'Urban', value: '1'),
                  ValueItem(label: 'Rural', value: '2'),
                 
                ],
                selectionType: SelectionType.multi,
                chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                dropdownHeight: 110,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
         ),   
       ],), // Ajouter le contenu spécifique à cette étape
        isActive: currentStep == 2,
        state: currentStep == 2 ? StepState.editing : StepState.complete,
      ),
      _buildStep(
        title: const Text('Summary', style: TextStyle(color: Colors.blue)),
        subtitle: const Text('Review your information'),
        content: Container(), // Ajouter le contenu spécifique à cette étape
        isActive: currentStep == 3,
        state: currentStep == 3 ? StepState.editing : StepState.complete,
      ),
    ],
  );
}

Step _buildStep({required Widget title, required Widget subtitle, required Widget content, required bool isActive, required StepState state}) {
  return Step(
    title: title,
    subtitle: subtitle,
    content: content,
    isActive: isActive,
    state: state,
  );
}

Widget _buildTextField({
  required TextEditingController controller,
  required String labelText,
  required String validatorText,
  bool obscureText = false,
  bool emailValidation = false,
}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return validatorText;
      } else if (emailValidation && !EmailValidator.validate(value)) {
        return 'Please enter a valid email';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: labelText,
      filled: true,
      fillColor: const Color(0xffE5E7EB).withOpacity(0.2),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.blueAccent, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: const Color(0xffE5E7EB).withOpacity(0.8), width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.blueAccent, width: 1.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.red, width: 1.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.red, width: 1.0),
      ),
    ),
  );
}

Widget _buildDatePicker({
  required TextEditingController controller,
  required String labelText,
  required String validatorText,
}) {
  return TextFormField(
    controller: controller,
    readOnly: true,
    onTap: () async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900), // Adjust the first date as needed
        lastDate: DateTime.now(),
      );
      if (pickedDate != null) {
        controller.text = DateFormat('yyyy-MM-dd').format(pickedDate);
      }
    },
    validator: (value) {
      if (value == null || value.isEmpty) {
        return validatorText;
      }
      return null;
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
        Icons.calendar_today,
        color: Color(0xffA1A8B0).withOpacity(0.5),
      ),
      labelText: labelText,
      labelStyle: TextStyle(color: Color(0xffA1A8B0)),
    ),
  );
}

Widget _buildPhoneNumberInput({
  required String labelText,
  required String validatorText,
}) {
  return InternationalPhoneNumberInput(
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
    formatInput: false,
    keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
    inputDecoration: InputDecoration(
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
        Icons.phone,
        color: Color(0xffA1A8B0).withOpacity(0.5),
      ),
      labelText: labelText,
      labelStyle: TextStyle(color: Color(0xffA1A8B0)),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return validatorText;
      }
      return null;
    },
  );
}

}
