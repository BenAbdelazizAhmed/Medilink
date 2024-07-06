import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int currentStep = 0;
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Utilisez MaterialApp comme racine
      home: Scaffold( // Utilisez Scaffold pour la structure de la page
        appBar: AppBar(
          title: Text('CupertinoStepper for Flutter'),
        ),
        body: SafeArea(
          child: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              switch (orientation) {
                case Orientation.portrait:
                  return _buildStepper(StepperType.vertical);
                case Orientation.landscape:
                  return _buildStepper(StepperType.horizontal);
                default:
                  throw UnimplementedError(orientation.toString());
              }
            },
          ),
        ),
      ),
    );
  }

  CupertinoStepper _buildStepper(StepperType type) {
    final canCancel = currentStep > 0;
    final canContinue = currentStep < 3;
    return CupertinoStepper(
      type: type,
      currentStep: currentStep,
      onStepTapped: (step) => setState(() => currentStep = step),
      onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
      onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
      steps: [
        _buildStep(
          title: Text('Step 1'),
          subtitle: Text('Subtitle'),
          isActive: currentStep == 0,
          state: currentStep == 0 ? StepState.editing : StepState.complete,
        ),
        _buildStep(
          title: Text('Step 2'),
          subtitle: Text('Subtitle'),
          isActive: currentStep == 1,
          state: currentStep == 1 ? StepState.editing : StepState.indexed,
          
        ),
        _buildStep(
          title: Text('Step 3'),
          subtitle: Text('Subtitle'),
          isActive: currentStep == 2,
          state: currentStep == 2 ? StepState.editing : StepState.indexed,
        
        ),
        _buildStep(
          title: Text('Error'),
          state: StepState.error,
          subtitle: Text('a'),
        ),
        _buildStep(
          title: Text('Disabled'),
          state: StepState.disabled,
          subtitle: Text('a'),
        ),
      ],
    );
  }

Step _buildStep({
  required Widget title,
  StepState state = StepState.indexed,
  bool isActive = false, required Text subtitle,
}) {
  return Step(
    title: title,
    subtitle: Text('Subtitle'),
    state: state,
    isActive: isActive,
    
    content: Column(
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
            decoration: InputDecoration(
              labelText: 'Field 2',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Field 3',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    ),
  );
}

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
