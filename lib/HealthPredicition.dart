import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:op/HealthResults.dart';
import 'package:op/Medical_Record.dart';

class HealthPrediction extends StatefulWidget {
  const HealthPrediction({super.key});

  @override
  State<HealthPrediction> createState() => _HealthPredictionState();
}

class _HealthPredictionState extends State<HealthPrediction> {
  
    void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: Container(
          height: 144.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child:  Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Row(
                    children: [
                      Icon(Icons.camera_alt),
                      SizedBox(width: 15.w,),
                      Text('Photo'),
                      
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                 _handleFileSelection();

                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);



    }
  }

  void _handleAttachmentPressede() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight:  Radius.circular(40)) ,color: Colors.white,
),
          padding:EdgeInsets.all(10),
          height: 350.h,
         
        child:Column(children: [
 CircleAvatar(
          radius: 47
          ,backgroundColor: Colors.blueAccent.withOpacity(0.11),
          child: Icon(Icons.check,size: 50,color: Colors.blueAccent,),
          ),          Text('uploaded successfully',style:TextStyle(fontWeight:FontWeight.w700,fontSize: 20.sp,color:Color(0xff0099E5)),),
          Text('Your documents were successfully uploaded '),
       SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(children: [
              Expanded(
                child: Container(height: 150,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('lib/Images/medfile.png',fit:BoxFit.fill,),
                ),
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.02),borderRadius: BorderRadius.circular(10)),),
              ),
              SizedBox(width: 20,),
                Expanded(
                  child: Container(height: 150,
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('lib/Images/medfil.jpg',fit:BoxFit.fill),
                  ),
                              decoration: BoxDecoration(color: Colors.black.withOpacity(0.02),borderRadius: BorderRadius.circular(10)),
                              ),
                ),
            ],),
          ),
         SizedBox(height: 10,),

   GestureDetector(
           onTap:(){
                       Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => medical_record()),
      );},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                color: Color(0xff0099E5),
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              child: Center(
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
      
        ],),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){

            Navigator.of(context).pop();
          },icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('Medicine',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
         decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xffC5FFD9).withOpacity(0.8)], // Couleur blanche en bas, couleur bleue en haut
            ),
          ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50,bottom: 40,left: 30,right: 30),
          child: Column(
            children: [
            Image.asset('lib/Images/imgpm.png'),
            SizedBox(height: 20.h,),
        Text(
  "Your Personal Health Radar: Reliable Prediction, Tranquility Guaranteed!",
  style: TextStyle(
    fontSize: 16,
    fontFamily: 'Roboto',
    color: Color(0xff050551),
    shadows: [
      Shadow(
        offset: Offset(2, 2), // Ajusta la posición de la sombra
        blurRadius: 3, // Ajusta la difuminación de la sombra
        color: Colors.grey.withOpacity(0.5), // Color y opacidad de la sombra
      ),
    ],
  ),

  textAlign: TextAlign.center,
)
    , 
    SizedBox(height: 30,),  
    Container(height: 60,width: 300,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        offset: Offset(1,1),
        spreadRadius: 4,
        color: Colors.black.withOpacity(0.08),
        blurRadius: 2
      )
    ]
    ),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly
      ,children: [
      Text('Disiease'),
      ElevatedButton(
        
        style:ElevatedButton.styleFrom(    
        backgroundColor:Colors.blue,elevation: 2,
        )
        ,onPressed:(){
        _handleAttachmentPressed();
      }, child:Text('Select',style:TextStyle(color: Colors.white),))
    ],),
    )
    , SizedBox(height: 160,),
      GestureDetector(
      onTap: () async {
        // Afficher l'indicateur de chargement
        showDialog(
          context: context,
          barrierDismissible: false, // Empêcher de fermer la boîte de dialogue en cliquant en dehors
          builder: (BuildContext context) {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        );

        // Simuler un délai pour représenter le chargement réel
        await Future.delayed(Duration(seconds: 2));

        // Fermer l'indicateur de chargement
        Navigator.of(context).pop();

        // Naviguer vers la nouvelle page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Healthresults()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xff0099E5),
          borderRadius: BorderRadius.circular(5),
        ),
        width: double.infinity,
        child: Center(
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ),
    )  ],),
        ),
      ),
    );
 
  }}