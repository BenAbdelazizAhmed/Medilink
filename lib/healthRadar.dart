import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Healthradar extends StatefulWidget {
  const Healthradar({super.key});

  @override
  State<Healthradar> createState() => _HealthradarState();
}

class _HealthradarState extends State<Healthradar> {
  
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
                  //_handleImageSelection();
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
                //  _handleFileSelection();

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
          Container(
                    margin:EdgeInsets.only(left: 30,right: 30,),
                  
                    height: 60,
                    decoration:BoxDecoration(
                                color:Color(0xff0099E5) ,
                                borderRadius: BorderRadius.circular(5)
                    ),
                  width: double.infinity,
                  child:Center(child:Text('Next',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
              
           ),
                ],),
        ),
      ),
    );
 ;
  }
}