import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Inscriptiondeux.dart';

class Inscri extends StatefulWidget {
  const Inscri({super.key});

  @override
  State<Inscri> createState() => _InscriState();
}

class _InscriState extends State<Inscri> {
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
          
          child:ListView(children: [
            Text('Create Account',style:TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Manrope',color:Color(0xff4491f9),fontSize: 25.sp,),),
                        SizedBox(height: 10,),
            Text('Fill your information below or registre with your social account',style:TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Manrope',color: Colors.black54),textAlign:TextAlign.center,),
            SizedBox(height: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         SizedBox(height: 2,),
                          Container(
                                      height: 45,
                                      
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
                                            prefixIcon:Icon(Icons.person_2_outlined,color: Color(0xffA1A8B0).withOpacity(0.5),),
                                            label:Text("Entrer your name",style:TextStyle(color: Color(0xffA1A8B0),fontFamily: 'Manrope'))
                                          ),   
                                         ),
                                       ),
                                     ),
                        ],
                      ),
                   SizedBox(height: 13,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [

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
             ],
           ),
           SizedBox(height: 13,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                                           SizedBox(height: 2,),
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
                  ],
                ),
                SizedBox(height: 10,),
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  Checkbox(
                  activeColor: Colors.blueAccent,
                  focusColor: Colors.blueAccent,
                  value:false, onChanged:(bool? value){
                  
                }),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   
                   children: [
                    SizedBox(height: 5,),
                 Row(children: [Text('I Agree to the ',style:TextStyle(color: Color(0xff3B4453),fontFamily: 'Manrope'),),
                  Text('Terms of Services',style:TextStyle(color: Colors.blue),),
                  Text('and',style:TextStyle(color: Color(0xff3B4453),fontFamily: 'Manrope'),),],),
                    Text('Privacy Policy',style:TextStyle(color: Colors.blue),),
                 ],),
               ],
             ),       
             SizedBox(height: 30,),           
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
                            child: Text('Complete Profile',style:TextStyle(fontFamily:'Poppins',fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                          ),
                        ),
                  ),

    
          
           ],),
       
        ),
      ),
    
          
        ]),
      ),
    );
  }}