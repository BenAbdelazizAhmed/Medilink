import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Inscription.dart';

class Choseuser extends StatefulWidget {
  const Choseuser({super.key});

  @override
  State<Choseuser> createState() => _ChoseuserState();
}

class _ChoseuserState extends State<Choseuser> {
  @override
  Widget build(BuildContext context) {
         return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.white,
        body:Stack(children: [
          Container(
            height: double.infinity,
            color: Colors.white,
          ),
          Positioned(child:Container(height: 250.h,width: 411.w,color:Color.fromARGB(255, 227, 241, 247),
          child: Image.asset('lib/Images/hama.jpg', fit: BoxFit.cover,),)),
          Positioned(
            top: 200.h
            ,child:Container(height: 420.h,width: 360.w,
            padding:EdgeInsets.only(left: 20,right:20,top: 0,bottom: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
          ),
          
          child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start
            ,children: [
            Text('Type of Account',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color:Color(0xff4491f9),),),
                 SizedBox(height: 20,),
                  GestureDetector(
                    onTap:(){
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Inscri()),
                                );
                    },
                    child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    children: [
                    Image.asset('lib/Images/doctorr.png'),
                    SizedBox(width: 10), 
                    Expanded( 
                      child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'I am a Doctor',
                                    style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Find a doctor online, access medical records and more',
                                    style: TextStyle(
                    color: Colors.white,
                                    ),
                                  ),
                                ],
                      ),
                    ),
                                    ],
                                  ),
                                ),
                  )
                  ,SizedBox(height: 20,),
                      Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('lib/Images/patiente.png'),
                  SizedBox(width: 10), 
                  Expanded( 
                    child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I am a patient',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Find a doctor online, access medical records and more',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
                   Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color:Colors.black.withOpacity(0.03),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('lib/Images/medicament.png'),
                  SizedBox(width: 10), 
                  Expanded( 
                    child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I am a pharmacy',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                'Find a doctor online, access medical records and more',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
         
                    ],),
          ),
        ),
      ),
    
          
        ]),
      ),
    );

  }
}