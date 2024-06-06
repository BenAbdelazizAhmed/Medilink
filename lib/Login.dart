import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/ForgetPassword.dart';
import 'package:op/Inscription.dart';
import 'package:op/Inscriptiondeux.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            padding:EdgeInsets.only(left: 20,right:20,top: 15,bottom: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Welcome',style:TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.bold,fontSize:33,color:Color(0xff4491f9),),
            ),
           Row(
            children: [
             Text('Sign in back to ',style:TextStyle(fontSize:20, fontFamily: 'Roboto',),),
            Text('Medilink',style:TextStyle(fontSize:20, fontFamily: 'Roboto',))
           ],),
           SizedBox(height: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start
            ,children: [
            SizedBox(height:5,),
        
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
                      prefixIcon:Icon(Icons.email_outlined,color: Color(0xffA1A8B0).withOpacity(0.5),),
                      label:Text("exemple@gamil.com",style:TextStyle(color: Color(0xffA1A8B0),fontFamily: 'Manrope'),),
                    ),
                   ),
                 ),
               ),
           ],),
                   SizedBox(height: 13,),
                                SizedBox(height: 5,),
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
                  SizedBox(height: 1,),
         Row(
          children: [
             Expanded(child: Container()),
          TextButton(child:Text('Forgot Password ?',style:TextStyle(color:Color(0xff4491f9))),onPressed:(){
             Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Forgetpassword()),
                                );
          },
          style:TextButton.styleFrom(
            foregroundColor: Color(0xff4491f9),
          ),)
          ],
         ),
     Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                                  MaterialPageRoute(builder: (context) => Inscriptiondeux()),
                                );
                          },
                          child: Center(
                            child: Text('Se Connecter',style:TextStyle(fontFamily:'Poppins',fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                          ),
                        ),
                  ),
  SizedBox(height: 20,),
      Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0), // Réduit la valeur de padding
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Divider(color: Colors.black38, height: 2),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text('Continue With', style: TextStyle(color:Color(0xff4491f9))),
      ),
      Expanded(
        child: Divider(color: Colors.black38, height: 2),
      ),
    ],
  ),
),

           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 50.0),
             child: Row(
              children: [
              Container(
             
                decoration: BoxDecoration(  
                  shape:BoxShape.circle,
                  color: Colors.white,border: Border.all(
                    color: Colors.blueAccent,

                    width: 0.1
                  )
               ),    child: Image.asset('lib/Images/facebook.png',height: 35,width: 85,)
              ),
             Container(
                decoration: BoxDecoration(  
                                    shape:BoxShape.circle,
                  color: Colors.white,border: Border.all(
                    color: Colors.blueAccent,
                    width: 0.1
                  )
               ),  
               child: Image.asset('lib/Images/pngegg.png',height: 35,width: 85,),
                ),
             
               Container(
                decoration: BoxDecoration(  
                                    shape:BoxShape.circle,
                  color: Colors.white,border: Border.all(
                    color: Colors.blueAccent,
                    width: 0.1
                  )
               ),  
                 child:Image.asset('lib/Images/mac.png',height: 35,width: 85,),
                               
               ),
             ],),
           ),
           SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center
            ,children: [
              Text("Don't have an account ? ",style:TextStyle(color:Color(0xffA1A8B0)),),
              GestureDetector(
                onTap:(){
                     Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Inscri()),
                                );
                  
                }
                ,child: Text("Sign up",style:TextStyle(color: Color(0xff4491f9))))
            ],)
          ],),
          ))
        ]),
      ),
    );
  }
}