import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Questions.dart';

class Healthresults extends StatefulWidget {
  const Healthresults({super.key});

  @override
  State<Healthresults> createState() => _HealthresultsState();
}

class _HealthresultsState extends State<Healthresults> {
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
            Image.asset('lib/Images/dyes.png'),
            SizedBox(height: 20.h,),
  
    SizedBox(height: 30,),  
    Container(height: 120,width: 300,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        offset: Offset(1,1),
        spreadRadius: 4,
        color: Colors.black.withOpacity(0.08),
        blurRadius: 2
      )
    ]
    ),
    child:     Center(
      child: Text(
        "Your Personal Health Radar: Reliable Prediction, Tranquility Guaranteed!",
        style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
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
      ),
    )
   
    )
    , SizedBox(height: 160,),
          GestureDetector(
            onTap:(){
                    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Questions()),
      );
              
            },
            child: Container(
                      margin:EdgeInsets.only(left: 30,right: 30,),
                    
                      height: 60,
                      decoration:BoxDecoration(
                                  color:Color(0xff0099E5) ,
                                  borderRadius: BorderRadius.circular(5)
                      ),
                    width: double.infinity,
                    child:Center(child:Text('Exit',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
                
             ),
          ),
                ],),
        ),
      ),
    );
 
  }
}