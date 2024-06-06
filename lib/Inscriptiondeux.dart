import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/ChooseCreen.dart';

class Inscriptiondeux extends StatefulWidget {
  const Inscriptiondeux({super.key});

  @override
  State<Inscriptiondeux> createState() => _InscriptiondeuxState();
}

class _InscriptiondeuxState extends State<Inscriptiondeux> {
    String? _selectedItem;
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
          
          child:ListView(
            children: [
            Text('Complete your Profile',style:TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Manrope',color:Color(0xff4491f9),fontSize: 25.sp),),
            Text("D'ont worry , only you can see your personal data . no one else will be able to see it",style:TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Manrope',color: Colors.black54),textAlign:TextAlign.left,),
            SizedBox(height: 10,),
            CircleAvatar(radius: 55,
            backgroundColor:Colors.blueAccent.withOpacity(0.11),
            child: Icon(Icons.person,size: 70,color: Colors.blue,),
            ),
                        SizedBox(height: 10,),
 Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                            prefixIcon:Icon(Icons.person_2_outlined,color: Color(0xffA1A8B0).withOpacity(0.5),),
                                            label:Text("Entrer your name",style:TextStyle(color: Color(0xffA1A8B0),fontFamily: 'Manrope'))
                                          ),   
                                         ),
                                       ),
                                     ),
                           ],
           ),
           SizedBox(height: 35,),
             
          
                  SizedBox(
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
         Text('Your Account has been Successully registred',style:TextStyle(color: Color(0xffA1A8B0),fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
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
                                  MaterialPageRoute(builder: (context) => ChooseScreen()),
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
        child: Text('Se connecter',style:TextStyle(fontFamily:'Poppins',fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      ),
    ),

         
           ],),
       
        ),
      ),
    
          
        ]),
      ),
    );
 
      
    
  
  }
}