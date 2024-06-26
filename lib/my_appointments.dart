import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppointments extends StatefulWidget {
  const MyAppointments({super.key});

  @override
  State<MyAppointments> createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {
      List<String> imagePaths = [
        'lib/Images/dr.png',
   'lib/Images/rpc.png',
    'lib/Images/sed1.png',
      'lib/Images/sed1.png',
        'lib/Images/sed1.png',
  'lib/Images/sed3.png',
  'lib/Images/sed2.png',
   'lib/Images/sed3.png',
  'lib/Images/sed2.png',
    'lib/Images/sed2.png',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
          appBar: AppBar(
            toolbarHeight: 35,
            leading:  IconButton(
              onPressed: () {
  Navigator.pop(context);
}
              ,icon:Icon(Icons.arrow_back_outlined,color: Colors.black,)),
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title:  Text('My Appointments',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
  fontStyle: FontStyle.italic,fontSize: 20.sp,
),),       ),
body: Padding(
  padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
  child: Container(  
    child: Column(children: [
      SizedBox(height: 20.h,),
      Container(height: 35.h,
      width: double.infinity,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Colors.blueAccent.withOpacity(0.04),
      ),
      child: Row(children: [
        Expanded(
          child: Container(
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xff6db0d0),),
          height: 40.h,
          child:Center(child: Text('Upcoming',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),),
        ),
         Expanded(
           child: Container(width: 120.w,
                 height: 40.h,color:Colors.blueAccent.withOpacity(0.03),
                 child:Center(child: Text('Canceled',style:TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.w500),)),),
         ),
      Expanded(
           child: Container(width: 120.w,
                 height: 40.h,color:Colors.blueAccent.withOpacity(0.03),
                 child:Center(child: Text('Completed',style:TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.w500),)),),
         ),  ],),
      )
    ,Expanded(
      child: Container(
            width: double.infinity,
            child:Column(
              children: [
              
              SizedBox(height: 5.h,),
                    
                Expanded(
                  child: Container(
                    child: ListView.builder(
                    itemCount:3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 125.h,
                        margin: EdgeInsets.only(top:15.h),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(15),
                              color:  Color.fromRGBO(253, 255, 255, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            spreadRadius: 3,
                            blurRadius: 0,
                            offset: Offset(1,2)
                          ), BoxShadow(
                            color: Colors.black.withOpacity(0.04),
                            spreadRadius: 3,
                            blurRadius: 0,
                            offset: Offset(-1,-2)
                          )
                        ]
                        
                        ),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                   
                       Column(
                        children: [
                           Container(
                            padding: EdgeInsets.only(top: 5.h,left: 10.w,bottom: 5.w),
                            width: 320.w,
                                                  decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(15),
                              color:  Color.fromRGBO(253, 255, 255, 1),
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 80.h,
                                              width: 80.w,
                                              decoration: BoxDecoration(
                                                borderRadius:BorderRadius.circular(15),
                                                color:Colors.white,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:BorderRadius.circular(15)
                                                ,child: Image.asset(imagePaths[index],height: 70.h,width: 70.w,fit:BoxFit.fill,)),
                                            ),
                                            SizedBox(width: 15.w,),
                                            Container(
                                              
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text('Dr. Ahmed Ben Abdelaziz',style:TextStyle(color: Color(0xff0099E5),fontWeight: FontWeight.bold,fontSize: 12.sp),),
                                              
                                                      Row(
                                                                            children: [
                                                                              Icon(Icons.place_outlined,color:Colors.black54,size: 15,),
                                                                              SizedBox(width: 4.w,),
                                                                              Text('Monastir Avenue bourguiba',style:TextStyle(color:Colors.black54,fontWeight: FontWeight.w200,fontSize: 12.sp),),
                                                                           
                                                                            ],
                                                                          ),
                                                           SizedBox(height: 10.h,),
                                                  Row(children: [
                                                    SizedBox(width: 30.w,),
                                                    Column(
                                                      children: [
                                                        Image.asset('lib/Images/agen.png'),
                                                        SizedBox(height: 5.h,),
                                                        Text('01/05/2024',style:TextStyle(color:Colors.black54,fontSize: 12.sp),)
                                                      ],
                                                    ),
                                                    
                                                    Divider(
                                                      height: 30.h,
                                                    color: Colors.red,
                                                    thickness: 100,),
                                                    Column(
                                                      children: [
                                                        Image.asset('lib/Images/jour.png'),
                                                          SizedBox(height: 5.h,),
                                                        Row(
                                                          children: [
                                                            SizedBox(width: 10.w,),
                                                            Text('08-15-10:30',style:TextStyle(color:Colors.black54,fontSize: 12.sp),),
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                  ],)                   
                                                ],
                                              ),
                                            ),
                                            
                                          ],
                                        )
                                      ],
                                    ),
                                      
                                                        ]                          ),
                                                        Divider(height: 4.h,color: Colors.black.withOpacity(0.09),),
                        
                                               Row(
                                                                  children: [ 
                                                                    Expanded(child:Container()),
                                                                    Container(
                                       height: 30.h,
                                  width: 100.w,
                                    decoration: BoxDecoration(
                        color:Colors.blueAccent.withOpacity(0.06),
                                                                  border: Border.all(
                                                                     color:Colors.blueAccent.withOpacity(0.06),
                                                                  ),
                                                                      borderRadius:BorderRadius.circular(10)
                                  
                                    ),
                                     
                                    
                                  child:Center(child: Text('Cancel',style:TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.w500,fontSize: 12.sp),))),
                              SizedBox(width: 15.w,),
                              Container(
                                       height: 30.h,
                                  width: 100.w,
                                    decoration: BoxDecoration(
                                                                  color:Color(0xff6db0d0),
                                                                  border: Border.all(
                                                                    color: Color(0xff6db0d0)
                                                                  ),
                                                                      borderRadius:BorderRadius.circular(10)
                                  
                                    ),
                                     
                                    
                                  child:Center(child: Text('Reschedule',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 12.sp),))),
                             
                             ],
                                                                 ),                            
                              ],
                            ),
                            ),
                      ],
                       ) ]),
                      );
                    },
                  ),
                  ),
                ),
              ],
            )
          ),
    ),
      
    ],),
  ),
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
            BottomNavigationBarItem(  icon:Image.asset('lib/Images/diag.png',height: 22,),label:"Diagnostics"),
              BottomNavigationBarItem(icon:Image.asset('lib/Images/chat.png',height: 22,),label:"Chat"),
                BottomNavigationBarItem(
                  icon:Image.asset('lib/Images/user.png',height: 22,),label:"Profile"),
                  
        ],),
      
    );
  }
}