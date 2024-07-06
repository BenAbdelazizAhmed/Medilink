import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalConfirm2 extends StatefulWidget {
  const MedicalConfirm2({super.key});

  @override
  State<MedicalConfirm2> createState() => _MedicalConfirm2State();
}

class _MedicalConfirm2State extends State<MedicalConfirm2> {
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
            CircleAvatar(radius: 100,backgroundImage:AssetImage('lib/Images/imo.png'),),
            SizedBox(height: 20.h,),
            Container(height: 100,width: double.infinity,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(1,1),
                blurRadius: 4,
                spreadRadius: 0
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(-1,-1),
                blurRadius: 4,
                spreadRadius: 2
              )
            ]
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start
              ,children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.all(15)
                  ,height: 60,width: 60,decoration: BoxDecoration(color:Color(0xff0EBE7F).withOpacity(0.5),borderRadius: BorderRadius.circular(10)),
               child: Icon(Icons.folder,color: Colors.white,),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,children: [
                  Text('Deroxat',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 3,),
                   Text('2 times per day',style:TextStyle(color:Color(0xff0EBE7F))),
                ],)
              ],)
          ,  Expanded(child: Container()),
            IconButton(onPressed:(){}, icon:Icon(Icons.more_vert))
            ],),)
             , SizedBox(height: 15,),
               Container(height: 100,width: double.infinity,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(1,1),
                blurRadius: 4,
                spreadRadius: 0
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(-1,-1),
                blurRadius: 4,
                spreadRadius: 2
              )
            ]
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start
              ,children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.all(15)
                  ,height: 60,width: 60,decoration: BoxDecoration(color:Color(0xff0EBE7F).withOpacity(0.5),borderRadius: BorderRadius.circular(10)),
               child: Icon(Icons.folder,color: Colors.white,),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,children: [
                  Text('Diloprane 3000',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 3,),
                   Text('3 times per day',style:TextStyle(color:Color(0xff0EBE7F))),
                ],)
              ],)
          ,  Expanded(child: Container()),
            IconButton(onPressed:(){}, icon:Icon(Icons.more_vert))
            ],),),
            SizedBox(height: 40,),
          Container(
                    margin:EdgeInsets.only(left: 30,right: 30,),
                  
                    height: 60,
                    decoration:BoxDecoration(
                                color:Color(0xff0099E5) ,
                                borderRadius: BorderRadius.circular(5)
                    ),
                  width: double.infinity,
                  child:Center(child:Text('Upload  record',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
              
           ),
                ],),
        ),
      ),
    );
  }
}