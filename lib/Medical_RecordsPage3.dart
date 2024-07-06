import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/All_specialities.dart';
import 'package:op/medical.dart';
class Medical_RecordsPage3 extends StatefulWidget {
  const Medical_RecordsPage3({super.key});

  @override
  State<Medical_RecordsPage3> createState() => _Medical_RecordsPage3State();
}

class _Medical_RecordsPage3State extends State<Medical_RecordsPage3> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){
              Navigator.pop(context);

          },icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('Medical Records',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
      body:Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xffC5FFD9).withOpacity(0.6),], 
            ),),
        height:600.h,
        width: double.infinity,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,children: [
          Image.asset('lib/Images/Plan.png',fit:BoxFit.cover,),
          SizedBox(height: 20,),
          Text('Type of record',style:TextStyle(fontWeight: FontWeight.w400,color: Color(0xff222222),fontSize: 20),),
          SizedBox(height: 20,),
          Row(children: [
            Column(children: [
              Image.asset('lib/Images/report.png'),
              Text('Report'),
            ],),
            SizedBox(width: 20,),
             Column(children: [
              Image.asset('lib/Images/Groupz.png'),
              Text('Prescription',style:TextStyle(color:Color(0xff0EBE7F)),),
            ],)
          ],),
          Divider(),
          Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
    Text('Record created on',style:TextStyle(fontWeight: FontWeight.w400,color: Color(0xff222222),fontSize: 20),),
          SizedBox(height: 10,),
          Text('27 Feb, 2021',style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff0EBE7F),fontSize: 20),),
            ],)
          ],),
          Divider()
         ,SizedBox(height: 30,)  ,GestureDetector(
          onTap:(){
            
             Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => specialities()),
      );
          },
           child: GestureDetector(
            onTap:(){
                   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Medical()),
      );
              
        
            },
             child: Container(
                    margin:EdgeInsets.only(left: 30,right: 30,),
                  
                    height: 60,
                    decoration:BoxDecoration(
                                color:Color(0xff0099E5) ,
                                borderRadius: BorderRadius.circular(5)
                    ),
                  width: double.infinity,
                  child:Center(child:Text('Upload  record',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
                  ),
           ),
         )        
              ],),
        
      ),
            bottomNavigationBar:BottomNavigationBar(
         
          backgroundColor:Colors.white,
          elevation: 4,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xff4789FC),
          unselectedItemColor:Colors.black,
          unselectedLabelStyle: TextStyle( color: Colors.black,),
          selectedLabelStyle:TextStyle( color:  Color(0xff4789FC),
          
          )
          ,items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home",),
            BottomNavigationBarItem(  icon:Image.asset('lib/Images/diag.png',height: 22.h,),label:"Diagnostics"),
              BottomNavigationBarItem(icon:Image.asset('lib/Images/chat.png',height: 22.h,),label:"Chat"),
                BottomNavigationBarItem(
                  icon:Image.asset('lib/Images/user.png',height: 22.h,),label:"Profile"),
                  
        ],),
  
    );
 }
}