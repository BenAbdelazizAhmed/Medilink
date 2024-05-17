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
          leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios),),
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
          padding: const EdgeInsets.only(top: 100,bottom: 40,left: 30,right: 30),
          child: Column(
            children: [
            CircleAvatar(radius: 100,backgroundImage:AssetImage('lib/Images/imo.png'),),
            SizedBox(height: 20.h,),
            Container(height: 100,width: double.infinity,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start
              ,children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.all(15)
                  ,height: 60,width: 60,decoration: BoxDecoration(color:Color(0xff0EBE7F).withOpacity(0.5),borderRadius: BorderRadius.circular(10)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,children: [
                  Text('Deroxat',style:TextStyle(fontWeight: FontWeight.w200,color: Colors.black),),
                  SizedBox(height: 3,),
                   Text('2 times per day'),
                ],)
              ],)
          ,  Expanded(child: Container()),
            IconButton(onPressed:(){}, icon:Icon(Icons.more_vert))
            ],),)
                ],),
        ),
      ),
    );
  }
}