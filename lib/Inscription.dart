import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(411, 731));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Container(
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
                        color: Color.fromARGB(255, 227, 241, 247),
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                          ),
                        ),
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,left: 20),
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Manrope',
                                  color: Color(0xff4491f9),
                                  fontSize: 25.sp,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Form(
                                key: _formKey,
                                child: Container(
                                  width: 700,
                                  color:Colors.red,
                                  height: 400,
                                  child: ListView(
                                    children: [
                                      _buildStepper(StepperType.vertical),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: SizedBox(
                                          height: 45,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xff4491f9),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                            ),
                                            onPressed: () {
                                              if (_formKey.currentState?.validate() ?? false) {
                                            
                                                
                                              }
                                            },
                                            child: Center(
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

  CupertinoStepper _buildStepper(StepperType type) {
    final canCancel = currentStep > 0;
    final canContinue = currentStep < 3;

    return CupertinoStepper(
      currentStep: currentStep,
              onStepTapped: (step) => setState(() => currentStep = step),
      onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
      onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
     steps: [
        _buildStep(
          title: Text('Connexion',style:TextStyle(color:Colors.blue),),
          subtitle: Text('Enter your details'),
          content: Column(
            children: [
              TextFormField(
                controller: _firstnameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'First Name',
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
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!EmailValidator.validate(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Email',
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
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
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
                ),
              ),
            ],
          ),
          isActive: currentStep == 0,
          state: currentStep == 0 ? StepState.editing : StepState.complete,
        ),
        _buildStep(
          
          title: Text('Step 2'),
          subtitle: Text('Step 2 subtitle'),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Field 1',
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
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Field 2',
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
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Field 3',
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
                ),
              ),
            ],
          ),
          isActive: currentStep == 1,
          state: currentStep == 1 ? StepState.editing : StepState.indexed,
        ),
        _buildStep(
          title: Text('Step 3'),
          subtitle: Text('Step 3 subtitle'),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Field 1',
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
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Field 2',
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
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Field 3',
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
                ),
              ),
            ],
          ),
          isActive: currentStep == 2,
          state: currentStep == 2 ? StepState.editing : StepState.indexed,
        ),
      ],
    );
  }

  Step _buildStep({
    required Widget title,
    required Widget subtitle,
    required Widget content,

    StepState state = StepState.indexed,
    bool isActive = false,
  }) {
    return Step(
      title: title,
      
      subtitle: subtitle,
      content: content,
      state: state,
      isActive: isActive,
    );
  }
}
