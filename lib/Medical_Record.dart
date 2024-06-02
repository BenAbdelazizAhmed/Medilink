import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Medical_RecordsPage1.dart';

class medical_record extends StatefulWidget {
  const medical_record({super.key});

  @override
  State<medical_record> createState() => _medical_recordState();
}

class _medical_recordState extends State<medical_record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('Medical Records',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
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
          child:ListView.builder(itemBuilder:(context,id){
            if(id==0)  return           Container(
              height: 250.h
              ,child: Image.asset('lib/Images/Plan.png',fit:BoxFit.cover,))
;
            else return Container(
            
              padding:EdgeInsets.only(top:10.h,left: 20.w,right:5.w),
              margin:EdgeInsets.only(top: 20.h,left: 20.w,right: 20.w),
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                                offset: Offset(1,1),
                                blurRadius: 4,
                                spreadRadius: 1,
                                color: Colors.black.withOpacity(0.05)
                              )
                            ]
              ),
              height: 90.h,width: double.infinity,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start
                ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Column(
                  children: [
                    Container(height: 40.h,width: 60.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),color:Color(0xff0EBE7F).withOpacity(0.9),
                    ),
                    child:Column(children: [
                      Text('27',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
                      Text('April',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white),)
                    ],)
                    ),
                    SizedBox(height: 10.h,),
                    Container(height: 20.h,width: 60.w, decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),color:Color(0xff0EBE7F).withOpacity(0.1),
                    ),child:Column(children: [
                      Text('New',style:TextStyle(fontWeight: FontWeight.bold,color:Color(0xff0EBE7F)),)
                    ],),),
                  ],
                )
            ,  SizedBox(width: 20.w,)
          ,  Column(
            crossAxisAlignment: CrossAxisAlignment.start
            ,children: [
            GestureDetector(
              onTap:(){
                
                 Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Medical_RecordsPage1()),
      );
              }
              ,child: Text('Records added by you',style:TextStyle(fontWeight: FontWeight.bold),)),
          Text('Record for Abdullah mamun',style:TextStyle(color: Colors.green,fontSize: 10.sp),),
          SizedBox(height: 4.h,),
         Text('1 Prescription',style:TextStyle(color: Color(0xff677294)),),
            ],)
           ,Expanded(child: Container()) ,  IconButton(icon: Icon(Icons.more_vert),onPressed: (){},)
              ],
              ),
              );
          }),
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