import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/CreateNewPassword.dart';

class Verificationcode extends StatefulWidget {
  const Verificationcode({super.key});

  @override
  State<Verificationcode> createState() => _VerificationcodeState();
}

class _VerificationcodeState extends State<Verificationcode> {
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
            ,child:Container(height: 600.h,width: 360.w,
            padding:EdgeInsets.only(left: 20,right:20,top: 60,bottom: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
          ),
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,children: [
          Text('Enter Verification Code',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
          SizedBox(height: 5,),
          Text('Enter code that we have sent to your number 08528188*** ',style:TextStyle(color:Color(0xffA1A8B0),),),
         SizedBox(height: 15,)
         ,Row(children: [
          Container(height: 55,width: 55,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Color(0xff4491f9)
            )
          ),
          )
        ,SizedBox(width: 10,),
           Container(height: 55,width: 55,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Color(0xff4491f9)
            )
          ),
          ),SizedBox(width: 10,),
             Container(height: 55,width: 55,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Color(0xff4491f9)
            )
          ),
          )
      ,SizedBox(width: 10,),
         Container(height: 55,width: 55,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Color(0xff4491f9)
            )
          ),
          ),
          SizedBox(width: 10,),
             Container(height: 55,width: 55,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Color(0xff4491f9)
            )
          ),
          )
      
      
       ],), 
               Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical:25),
                    child: SizedBox(
                          height: 45,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Color(0xff4491f9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), 
                            ),
                          ),
                          onPressed: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Createnewpassword()),
                                );
                          },
                          child: Center(
                            child: Text('Verify',style:TextStyle(fontFamily:'Poppins',fontSize: 14,color: Colors.white,fontWeight: FontWeight.w800),),
                          ),
                          ),
                        ),
                  ),
    Row(
            mainAxisAlignment: MainAxisAlignment.center
            ,children: [
              Text("Didn’t receive the code? ",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,fontFamily: 'Manrope'),),
              Text("Resend",style:TextStyle(color: Color(0xff4491f9),fontWeight: FontWeight.bold,fontFamily: 'Manrope'))
            ],)
        ],),
    
          ))
        ]),
      ),
    );
 
  }}