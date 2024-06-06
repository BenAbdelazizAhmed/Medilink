import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Acceuil.dart';

class Createnewpassword extends StatefulWidget {
  const Createnewpassword({super.key});

  @override
  State<Createnewpassword> createState() => _CreatenewpasswordState();
}

class _CreatenewpasswordState extends State<Createnewpassword> {
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
          Text('Create New Password',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
          SizedBox(height: 5,),
          Text('Create your new password to login',style:TextStyle(color:Color(0xffA1A8B0),),),
         SizedBox(height: 15,)
         ,        Container(
                                height: 50,
                          
                                                              decoration: BoxDecoration(

                                        color: Color(0xffE5E7EB).withOpacity(0.2),
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
                      prefixIcon:Icon(Icons.lock_outline,color: Color(0xffA1A8B0).withOpacity(0.5),),
                      label:Text("**********",style:TextStyle(color: Colors.black38)),
                                            suffixIcon:Icon(Icons.visibility,color: Color(0xffA1A8B0).withOpacity(0.5),)

                    ),   
                                   ),
                                 ),
                               ),
                  SizedBox(height: 15,),
                Container(
                                height: 50,
                          
                                                              decoration: BoxDecoration(

                                        color: Color(0xffE5E7EB).withOpacity(0.2),
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
                      prefixIcon:Icon(Icons.lock_outline,color: Color(0xffA1A8B0).withOpacity(0.5),),
                      label:Text("**********",style:TextStyle(color: Colors.black38)),
                                            suffixIcon:Icon(Icons.visibility,color: Color(0xffA1A8B0).withOpacity(0.5),)

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
                                  showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        
        padding: EdgeInsets.only(top: 40),
        height: 320.0, 
        color: Colors.white,
        child: Column(
          children: [
         CircleAvatar(
          radius: 47
          ,backgroundColor: Colors.blueAccent.withOpacity(0.11),
          child: Icon(Icons.check,size: 50,color: Colors.blueAccent,),
          ),
         SizedBox(height: 15,),
         Text('Success',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
                  SizedBox(height: 15,),
         Text('You have successfully reset your password.',style:TextStyle(color: Color(0xffA1A8B0),fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                    SizedBox(height: 15,),
             Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                                  MaterialPageRoute(builder: (context) => Med()),
                                );
                          },
                          child: Center(
                            child: Text('Login',style:TextStyle(fontFamily:'Poppins',fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                          ),
                        ),
                  ),

          ],
        ),
      ),
    );
  },
);

                          },
                          child: Center(
                            child: Text('Create Password',style:TextStyle(fontFamily:'Poppins',fontSize: 14,color: Colors.white,fontWeight: FontWeight.w800),),
                          ),
                          ),
                        ),
                  ),

        ],),
          ))
        ]),
      ),
    );
 
  }}