import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/MedicalConfirm2.dart';

class MedicalConfirm extends StatefulWidget {
  const MedicalConfirm({super.key});

  @override
  State<MedicalConfirm> createState() => _MedicalConfirmState();
}

class _MedicalConfirmState extends State<MedicalConfirm> {
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
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: ListView(
                        children: [
            Center(child: CircleAvatar(radius:100.w,backgroundImage:AssetImage('lib/Images/imo.png'),)),
            SizedBox(height: 20.h,),
            Text('Medical name',style:TextStyle(color:Color(0xff050551),fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w600),textAlign: TextAlign.left,)
          ,SizedBox(height: 20.h,)
          ,Container(height: 50.h,width: double.infinity,
          
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black
            )
            ,color: Colors.white,borderRadius: BorderRadius.circular(10)),),
             SizedBox(height: 20.h,),
            Text('Frequency',style:TextStyle(color:Color(0xff050551),fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Roboto'),)
        , Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          CircleAvatar(radius: 30,
          backgroundColor:Color(0xff0EBE7F).withOpacity(0.2),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center
            ,children: [
            Text('1/2',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          , Text('day',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          ],),
          ),SizedBox(width: 15,),
          CircleAvatar(radius: 30,
          backgroundColor:Color(0xff0EBE7F).withOpacity(0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center
            ,children: [
            Text('2/',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          , Text('day',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          ],),
          ),SizedBox(width: 10,),
          CircleAvatar(radius: 30,
          backgroundColor:Color(0xff0099E5),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center
            ,children: [
            Text('3/',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          , Text('day',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          ],),
          ),
        ],),
             SizedBox(height: 20.h,),
            Text('Select time',style:TextStyle(color:Color(0xff050551),fontWeight: FontWeight.bold,fontSize: 16,fontFamily: 'Roboto'),)
       ,
       SizedBox(height: 15,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(width: 80,height: 30, 
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black.withOpacity(0.7)
            )
            ,color: Colors.white,borderRadius: BorderRadius.circular(10)),),
        SizedBox(width: 25,),
                Container(width: 80,height: 30, 
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black
            )
            ,color: Colors.white,borderRadius: BorderRadius.circular(10)),),
                        SizedBox(width: 25,),

                        Container(width: 80,height: 30, 
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black
            )
            ,color: Colors.white,borderRadius: BorderRadius.circular(10)),)

       ],),
       SizedBox(height: 25,),
              GestureDetector(
                onTap:(){
                   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MedicalConfirm2()),
      );
                  

                },
                child: Container(
                  margin:EdgeInsets.only(left: 20,right: 20),
                  
                  height: 50,
                  decoration:BoxDecoration(
                              color:Color(0xff0099E5) ,
                              borderRadius: BorderRadius.circular(10)
                  ),
                width: double.infinity,
                child:Center(child:Text('Confirm',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
                ),
              )        ],),
        ),
      ),
    );
  }
}