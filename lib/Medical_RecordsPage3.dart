import 'package:flutter/material.dart';

class Medical_RecordsPage3 extends StatefulWidget {
  const Medical_RecordsPage3({super.key});

  @override
  State<Medical_RecordsPage3> createState() => _Medical_RecordsPage3State();
}

class _Medical_RecordsPage3State extends State<Medical_RecordsPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xffC5FFD9).withOpacity(0.6),], 
            ),),
        height: double.infinity,
        width: double.infinity,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,children: [
          SizedBox(height: 50,),
          Image.asset('lib/Images/Plan.png'),
          SizedBox(height: 40,),
          Text('Type of record',style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff222222),fontSize: 25),),
          SizedBox(height: 40,),
          Row(children: [
            Column(children: [
              Image.asset('lib/Images/report.png'),
              Text('Report'),
            ],),
            SizedBox(width: 20,),
             Column(children: [
              Image.asset('lib/Images/report.png'),
              Text('Prescription'),
            ],)
          ],),
          Divider(),
          Row(children: [
            Column(children: [
              Text('Record created on'),
          Text('27 Feb, 2021'),
            ],)
          ],)
         ,SizedBox(height: 100,)  ,Container(
                margin:EdgeInsets.only(left: 20,right: 20),
                
                height: 50,
                decoration:BoxDecoration(
                            color:Color(0xff0099E5) ,
                            borderRadius: BorderRadius.circular(10)
                ),
              width: double.infinity,
              child:Center(child:Text('Upload  record',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
              )        ],),
        
      ),
    );
  }
}