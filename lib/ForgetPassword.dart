import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/VerificationCode.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
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
          Text('Forgot your Password?',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,fontFamily: 'Inter'),),
          SizedBox(height: 5,),
          Text('Enter your email or your phone number, we will send you confirmation code',style:TextStyle(color:Color(0xffA1A8B0),),),
         SizedBox(height: 15,)
         ,    Container(
                                      height: 45,
                                      
                                      decoration: BoxDecoration(
                                        color: Color(0xffE5E7EB).withOpacity(0.3),
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 0.1
                                      ),
                                      borderRadius:BorderRadius.circular(20)),
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                                         child:Row(children: [
                                          Container(width: 150,
                                          decoration:BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                            
                                          ),
                                          child:Center(child:Text('Email',style:TextStyle(color:Color(0xff4491f9),fontWeight: FontWeight.w400),),),
                                          )
                                      ,   Container(width: 140,
                                          decoration:BoxDecoration(
                                            
                                          ),
                                          child:Center(child:Text('phone',style:TextStyle(color:Colors.black45),),),
                                          )
                                     
                                       ],)
                                         
                                       ),
                                     ),
                     SizedBox(height: 15,),
             Container(
                                      height: 45,
                                      
                                      decoration: BoxDecoration(
                                        color: Color(0xffE5E7EB).withOpacity(0.3),
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 0.1
                                      ),
                                      borderRadius:BorderRadius.circular(20)),
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                         child: TextField(
                                          decoration: InputDecoration(
                                            border:InputBorder.none,
                                            prefixIcon:Icon(Icons.email_outlined,color: Color(0xffA1A8B0).withOpacity(0.5),),
                                            label:Text("Entrer your email",style:TextStyle(color: Color(0xffA1A8B0),fontFamily: 'Manrope'))
                                          ),   
                                         ),
                                       ),
                                     ),
              Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical:20),
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
                                  MaterialPageRoute(builder: (context) => Verificationcode()),
                                );
                          },
                          child: Center(
                            child: Text('Reset Password',style:TextStyle(fontFamily:'Poppins',fontSize: 14,color: Colors.white,fontWeight: FontWeight.w800),),
                          ),
                          ),
                        ),
                  ),

        ],),
    
          ))
        ]),
      ),
    );
  }

}