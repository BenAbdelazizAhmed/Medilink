import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/All_specialities.dart';
import 'package:op/MedelinkMessage.dart';
import 'package:op/Medical_RecordsPage3.dart';
import 'package:op/MyDoctor.dart';
import 'package:op/ProfileSettings.dart';
import 'package:op/Questions.dart';
import 'package:op/SearchDoctor.dart';
import 'package:op/SearchLabo.dart';
import 'package:op/my_appointments.dart';
import 'package:op/searchpharmac.dart';

import 'Medical_RecordsPage2.dart';

class Med extends StatefulWidget {
  const Med({Key? key}) : super(key: key);

  @override
  _MedState createState() => _MedState();
}
enum _SelectedTab { home, likes, search, profile }

class _MedState extends State<Med> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Med(),
    MedelinkMessage(),
    MedelinkMessage(),
    ProfileSettings(),
  ];
  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
      switch (index) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Med()),
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>     MyAppointments(),),
      );
      break;
    case 2:
      // Naviguer vers la page Chat
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>     MedelinkMessage()),
      );
      break;
    case 3:
      // Naviguer vers la page Profile
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileSettings()),
      );
      break;
  }
  }
 List <String> imgo=[
  'lib/Images/imge.png',
 'lib/Images/l1.jpeg',
    'lib/Images/l2.jpeg',
    'lib/Images/l3.jpeg',
    'lib/Images/l4.jpeg',
    'lib/Images/l5.jpeg',
    'lib/Images/l6.jpeg',
    'lib/Images/l7.jpeg',
    'lib/Images/l3.jpeg',
    'lib/Images/l4.jpeg',
    'lib/Images/l5.jpeg',
    'lib/Images/l6.jpeg',
    'lib/Images/l7.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
 _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int index) {
    setState(() {
      _selectedTab = _SelectedTab.values[index];
    });
  }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Medelink",
      home: Scaffold(
       drawer: AppDrawer(),
        key: _scaffoldKey, 
        backgroundColor: Colors.white,
       body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only( left:ScreenUtil().setWidth(5), right: ScreenUtil().setWidth(5)),
          width: double.infinity,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 0),
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.only(top: 0),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Column(
                        children: [
                          Container(
                            height: 374.h,color: Colors.white,
                            width: double.infinity,
                            child:Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(10),right: ScreenUtil().setWidth(10),top: ScreenUtil().setHeight(20)),
                                  height: 142.h,
                                  color: Colors.white,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Row(children: [
                                      GestureDetector(
                                        onTap:(){
                                                      _scaffoldKey.currentState?.openDrawer();
                                        },
                                          child: Container(
                                            
                                            height: 55.h,width: 55.w,
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                          child:ClipRRect(
                                            borderRadius: BorderRadius.circular(10)
                                            ,child: Image.asset('lib/Images/sed1.png',fit: BoxFit.fill,)),
                                          ),
                                        ),
                                        SizedBox(width: 10.w,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Hello, ',style:TextStyle(color: Color(0xff0A0B0C),     fontFamily: 'Roboto',
   fontSize: 18.sp)),
                                                Text('Ahmed !',style:TextStyle(color:Color(0xff0099E5),     fontFamily: 'Roboto',
   fontSize: 18.sp),)
                                              ],
                                            ),
                                            SizedBox(height: 3.h,),
                                            Text('Welcome To Medilink',style:TextStyle(fontFamily: 'Roboto',fontSize:15.sp,color:Colors.black54,))
                                          ],
                                        ),
                                        Expanded(child:Container()),
                                         CircleAvatar(
                                          radius: 17,
                                          backgroundColor: Colors.white,
                                          backgroundImage:AssetImage('lib/Images/heart.png'),
                                        ),
                                        SizedBox(width: 15.w,),
                                        GestureDetector(
                                          onTap:(){
                             
      
    
                                          },
                                          child: CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Colors.white,
                                            backgroundImage:AssetImage('lib/Images/notification.png'),
                                          ),
                                        ),
                                    
                                      ],),
                       GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SearchDoct()),
    );
  },
  child: Row(
    children: [
     Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10.h),
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            height: 45.h,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 1),
                  blurRadius: 4.w,
                  spreadRadius: 4.w,
                  color: Colors.black.withOpacity(0.03),
                ),
                BoxShadow(
                  offset: Offset(-1, -1),
                  blurRadius: 4.w,
                  spreadRadius: 4.w,
                  color: Colors.black.withOpacity(0.03),
                )
              ],
              borderRadius: BorderRadius.circular(10.w),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 8.w),
                    Text(
                      'Find Your Doctor, Phar...',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 12.sp, 
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
         SizedBox(width: ScreenUtil().setWidth(5)),
      TextButton(
        onPressed: () {},
        child: Text(
          'Map View',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff0099E5),
          ),
        ),
      )
    ],
  ),
),

                    
                   ],
                                  ),
                                  
                                ),
                                                         
                        Container(
                          
                          decoration: BoxDecoration(
                            color: Colors.white
                            ,borderRadius: BorderRadius.circular(10)),
                          height: 150.h,width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w
                          )
                          ,child:ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ClipRRect(
                            borderRadius: BorderRadius.circular(10)
                            ,child: Image.asset('lib/Images/test.png',fit:BoxFit.fill,)),
                            ClipRRect(
                            borderRadius: BorderRadius.circular(10)
                            ,child: Image.asset('lib/Images/test.png',fit:BoxFit.fill,)),
                            ClipRRect(
                            borderRadius: BorderRadius.circular(10)
                            ,child: Image.asset('lib/Images/test.png',fit:BoxFit.fill,)),
                        
                            ],
                          ))  , GestureDetector(
                               onTap: (){
                                                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchLabo()),
            );
                                            },
                            child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Analysis lab',style:TextStyle(color: Colors.black,     fontFamily: 'Roboto',
                               fontSize: 14.sp),),
                                        TextButton(onPressed:(){
                                             Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => specialities()),
      );
                                        },child:Text('See All',style:TextStyle(color: Colors.blue)),)
                                      ],
                                    ),
                                  ),
                          )
                            
                               ,Container(
                                    color: Colors.white,
  height: MediaQuery.of(context).size.height * 0.06,
  width: double.infinity,
  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width * 0.3,
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color(0xff6db0d0),
            width: 0.5.w,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/Images/stethoscope.png', height: MediaQuery.of(context).size.height * 0.030),
            SizedBox(width: MediaQuery.of(context).size.width * 0.015),
            Text(
              'Doctor',
              style: TextStyle(color: Color(0xff6db0d0), fontWeight: FontWeight.bold,fontSize: 10.sp),
            ),
          ],
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width * 0.04),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchPharmaciee()),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.055,
          width: MediaQuery.of(context).size.width * 0.34,
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xff6db0d0),
              width: 0.4,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/Images/medicament.png', height: MediaQuery.of(context).size.height * 0.045),
              SizedBox(width: MediaQuery.of(context).size.width * 0.015),
              Text(
                'Pharmacy',
                style: TextStyle(color: Color(0xff6db0d0), fontWeight: FontWeight.bold,fontSize: 10.sp),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width * 0.04),
      Container(
        height: MediaQuery.of(context).size.height * 0.055,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color(0xff6db0d0),
            width: 0.4,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/Images/prescription.png', height: MediaQuery.of(context).size.height * 0.045),
            SizedBox(width: MediaQuery.of(context).size.width * 0.015),
            Text(
              'Medicine',
              style: TextStyle(color: Color(0xff6db0d0), fontWeight: FontWeight.bold,fontSize: 12.sp),
            ),
          ],
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width * 0.04),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchLabo()),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.030,
          width: MediaQuery.of(context).size.width * 0.42,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xff6db0d0),
              width: 0.4,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/Images/prescription.png', height: MediaQuery.of(context).size.height * 0.045),
              SizedBox(width: MediaQuery.of(context).size.width * 0.015),
              Text(
                'Analysis lab',
                style: TextStyle(color: Color(0xff6db0d0), fontWeight: FontWeight.bold,fontSize: 12.sp),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),

                                
                          ],
                            ),
                          )
                         ],
                      );
                    }else if (index==2) {
                      return Column(
                        children: [
                      
                          Column(children: [
                            
                            Container(
                               height: 165.h,
                                  width: double.infinity,
                              child: ListView.builder(
                                itemCount: 10,
                                scrollDirection:Axis.horizontal
                                ,itemBuilder:(context,id){
                                return Container(height: 150,
                                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                                  padding: EdgeInsets.only(top: 8,left: 10,right: 10),
                                  width: 200.w,
                                  
                                  decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white.withOpacity(0.1),
                                                    offset: Offset(6, 6),
                                                    blurRadius: 2
                                                  ),
                                                   BoxShadow(
                                                      color: Colors.white.withOpacity(0.1),
                                                    offset: Offset(-6,-6),
                                                    blurRadius: 2
                                                  )
                                                ],
                                                color: Colors.blue.withOpacity(0.01),
                                                            border: Border.all(color: Colors.black,width: 0.08.w ),
                                                   ),
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start
                                    ,children: [
                                  
                                  
                                  Container(
                                  child:Column(
                                    children: [
                                    
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           Container(
                                      padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10))
                                    ),
                                    child:Text('15% off',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
                                    ),
                                     
                                          Container(
                                            
                                            height: 100,
                                            width: 90
                                            ,child: Image.asset('lib/Images/pop.png',fit:BoxFit.fill)),
                                                                          Icon(Icons.favorite_border_outlined, color: Color(0xff7BC1B7)),

                                        ],
                                      ),
                                      Text('Panadol Advance 500mg',style:TextStyle(fontWeight: FontWeight.w600,)),                                   
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                    Row(
                                      children: [
                                        Text('210 D',style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff0099E5))),
                                        SizedBox(width: 10,),
                                        Text('28',style:TextStyle(fontWeight: FontWeight.w600,color: Colors.black38),)
                                      ],
                                    ),
                                     Container(
                                                height: 25.h, // Using ScreenUtil for height
                                                width: 80.w, // Using ScreenUtil for width
                                                decoration: BoxDecoration(
                                                  color: Color(0xff0099E5),
                                                  border: Border.all(color: Color(0xff0099E5)),
                                                  borderRadius: BorderRadius.circular(5.r), // Using ScreenUtil for border radius
                                                ),
                                                child: Center(child: Text('Book', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                                              ),
                                   ],
                                 ),
                                    ])
                                  )
                                  ]),
                                );
                              }),
                            )
                            ,Divider(
                              color: Colors.black12,
                              height: 10.h,
                            )
                          ]),
                        ],
                      );
                    }
                    
                     else if (index == 7) {
                      return Padding(
                        padding:EdgeInsets.only(top:ScreenUtil().setHeight(10)),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 170.0.h,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                          ),
                          items: [
                            'lib/Images/raa.png',
                            'lib/Images/raaa.png',
                            'lib/Images/raaaa.jpg',
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 140.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 0,
                                            blurRadius: 5,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          i,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 30.h,
                                      right: 40.w,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Acheter',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }).toList(),
                        ),
                      );
                    } else if (index==1){
                      return Column(
                        children: [
                              SizedBox(height:15.h,),
                            Container(
                            height: 365.h,
                            margin: EdgeInsets.only(
                                bottom:ScreenUtil().setHeight(15), left: ScreenUtil().setWidth(5), right: ScreenUtil().setWidth(5)),
                            padding: EdgeInsets.only(top: ScreenUtil().setHeight(10), left: ScreenUtil().setWidth(5), right: ScreenUtil().setWidth(5)),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                               
                             
                              
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor:
                                          Colors.transparent,
                                      backgroundImage:
                                          AssetImage('lib/Images/pexels-andrea-piacquadio-733872.jpg'),
                                    ),
                                    SizedBox(width: 15.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                          children: [
                                            Text(
                                              'Dr Albert Ambrose',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                    fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black87,
                                              ),
                                            ),
                                            SizedBox(width: 110.w),
                                            Icon(
                                              Icons.more_horiz,
                                              color: Colors.black87,
                                              size: 22,
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          '10 minutes ag',
                                          style: TextStyle(
                                            color: Colors.black54,
                          
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h), Expanded(child:Container(
                              width: double.infinity,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.withOpacity(0.01),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(5)),
                              child: Column(
                                children: [
                                Padding(
                                  padding:EdgeInsets.all(ScreenUtil().setWidth(8)),
                                  child: Text(
                                      "un état complet de bien-être physique, mental et social, et ne consiste pas seulement en une absence de maladie",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                      fontFamily: 'Roboto',
                                          color: Colors.black87)),
                                ),
                                SizedBox(height: 4.h),
                                Container(
                                  width: double.infinity,
                                  height: 160.h,
                                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(5)),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(15),
                                    child: Image.asset(
                                imgo[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(15),
                                    color:
                                        Colors.black.withOpacity(0.07),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor:
                                          Colors.black.withOpacity(0.05),
                                      child: Center(
                                          child: Image.asset('lib/Images/icon1.png')),
                                    ),
                                    SizedBox(width:5.w),
                                    Text("2k"),
                                    SizedBox(width: 15.w),
                                    CircleAvatar(
                                      radius: 13,
                                      backgroundColor:
                                          Colors.black.withOpacity(0.05),
                                      child: Center(
                                          child: Image.asset('lib/Images/icon2.png')),
                                    ),
                                    SizedBox(width: 5.w),
                                    Text("23"),
                                    SizedBox(width: 15.w),
                                 
                                  ],
                                ),
                                SizedBox(height: 5.h,),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(10)),
                                  child: Row(children: [
                              
                                    SizedBox(width: 10.w,),
                                    Text('Write your Opinion',style:TextStyle(color:Colors.black54)),
                          Expanded(child:Container()),                                                            Text('(275 comments)',style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
                                  ],),
                                )  
                                ],
                              ),
                             ))
                                
                              ],
                            ),
                          ),
                         SizedBox(height: 15.h,),
                          Container(
                            height: 365.h,
                            margin: EdgeInsets.only(
                                bottom: ScreenUtil().setHeight(15), left: ScreenUtil().setWidth(5), right: ScreenUtil().setWidth(5)),
                            padding: EdgeInsets.only(top: ScreenUtil().setHeight(10), left: ScreenUtil().setWidth(5), right:ScreenUtil().setWidth(5)),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                               boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 1),
                                blurRadius:4,spreadRadius:4,color:Colors.black.withOpacity(0.03)
                              ),
                                BoxShadow(
                                offset: Offset(-1, -1),
                                blurRadius: 4,spreadRadius: 4,color: Colors.black.withOpacity(0.03)
                              )
                            ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor:
                                          Colors.transparent,
                                      backgroundImage:
                                          AssetImage('lib/Images/pexels-andrea-piacquadio-733872.jpg'),
                                    ),
                                    SizedBox(width: 15.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                          children: [
                                            Text(
                                              'Dr Albert Ambrose',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                    fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 100.w),
                                            Icon(
                                              Icons.more_horiz,
                                              color: Colors.black87,
                                              size: 22.h,
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          '10 minutes ago',
                                          style: TextStyle(
                                            color: Colors.black54,
                          
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h), Expanded(child:Container(
                              width: double.infinity,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(5)),
                              child: Column(
                                children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                      "un état complet de bien-être physique, mental et social, et ne consiste pas seulement en une absence de maladie",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                     fontFamily: 'Roboto',
                                          color: Colors.black87)),
                                ),
                                SizedBox(height: 4.h),
                                Container(
                                  width: double.infinity,
                                  height: 160.h,
                                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(5)),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(15),
                                    child: Image.asset(
                                imgo[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(15),
                                    color:
                                        Colors.black.withOpacity(0.07),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor:
                                          Colors.black.withOpacity(0.05),
                                      child: Center(
                                          child: Image.asset('lib/Images/icon1.png')),
                                    ),
                                    SizedBox(width:5.w),
                                    Text("2k"),
                                    SizedBox(width: 15.w),
                                    CircleAvatar(
                                      radius: 13,
                                      backgroundColor:
                                          Colors.black.withOpacity(0.05),
                                      child: Center(
                                          child: Image.asset('lib/Images/icon2.png')),
                                    ),
                                    SizedBox(width: 5.w),
                                    Text("23"),
                                    SizedBox(width: 15.w),
                                 
                                  ],
                                ),
                                SizedBox(height: 5.h,),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(10)),
                                  child: Row(children: [
                              
                                    SizedBox(width: 10.w,),
                                    Text('Write your Opinion',style:TextStyle(color:Colors.black54)),
                          Expanded(child:Container()),                                                            Text('(275 comments)',style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
                                  ],),
                                )  
                                ],
                              ),
                             ))
                                
                              ],
                            ),
                          ),
                        ],
                      );
                    }else {
                      return Column(
                        children: [
                          Divider(                        color:Colors.black.withOpacity(0.2),
                          height: 15.h,
)                   ,   
                          
                          Container(
                            height: 365.h,
                            margin: EdgeInsets.only(
                                bottom:ScreenUtil().setHeight(15), left: ScreenUtil().setWidth(5), right: ScreenUtil().setWidth(5)),
                            padding: EdgeInsets.only(top: ScreenUtil().setHeight(10), left: ScreenUtil().setWidth(5), right: ScreenUtil().setWidth(5)),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                                  boxShadow: [
                              BoxShadow(
                                offset: Offset(1, 1),
                                blurRadius:4,spreadRadius:4,color:Colors.black.withOpacity(0.03)
                              ),
                                BoxShadow(
                                offset: Offset(-1, -1),
                                blurRadius: 4,spreadRadius: 4,color: Colors.black.withOpacity(0.03)
                              )
                            ],
                              borderRadius: BorderRadius.circular(15),
                             
                              
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor:
                                          Colors.transparent,
                                      backgroundImage:
                                          AssetImage('lib/Images/pexels-andrea-piacquadio-733872.jpg'),
                                    ),
                                    SizedBox(width: 15.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                          children: [
                                            Text(
                                              'Dr Albert Ambrose',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                    fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(width: 110.w),
                                            Icon(
                                              Icons.more_horiz,
                                              color: Colors.black87,
                                              size: 22,
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          '10 minutes ag',
                                          style: TextStyle(
                                            color: Colors.black54,
                          
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h), Expanded(child:Container(
                              width: double.infinity,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue.withOpacity(0.01),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(5)),
                              child: Column(
                                children: [
                                Padding(
                                  padding:EdgeInsets.all(ScreenUtil().setWidth(8)),
                                  child: Text(
                                      "un état complet de bien-être physique, mental et social, et ne consiste pas seulement en une absence de maladie",
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                       fontFamily: 'Roboto',
                                          color: Colors.black87)),
                                ),
                                SizedBox(height: 4.h),
                                Container(
                                  width: double.infinity,
                                  height: 160.h,
                                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(5)),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(15),
                                    child: Image.asset(
                                imgo[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(15),
                                    color:
                                        Colors.black.withOpacity(0.07),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor:
                                          Colors.black.withOpacity(0.05),
                                      child: Center(
                                          child: Image.asset('lib/Images/icon1.png')),
                                    ),
                                    SizedBox(width:5.w),
                                    Text("2k"),
                                    SizedBox(width: 15.w),
                                    CircleAvatar(
                                      radius: 13,
                                      backgroundColor:
                                          Colors.black.withOpacity(0.05),
                                      child: Center(
                                          child: Image.asset('lib/Images/icon2.png')),
                                    ),
                                    SizedBox(width: 5.w),
                                    Text("23"),
                                    SizedBox(width: 15.w),
                                 
                                  ],
                                ),
                                SizedBox(height: 5.h,),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(10)),
                                  child: Row(children: [
                              
                                    SizedBox(width: 10.w,),
                                    Text('Write your Opinion',style:TextStyle(color:Colors.black54)),
                          Expanded(child:Container()),                                                            Text('(275 comments)',style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),
                                  ],),
                                )  
                                ],
                              ),
                             ))
                                
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
          bottomNavigationBar:BottomNavigationBar(
              currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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
     ),
    );
  }
}



class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 250,
        backgroundColor:Color(0xFF17203A),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
        SizedBox(height: 100,
        child:   UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/Images/imagd.png'),
                    fit: BoxFit.cover,
                  ),
                ),
            accountName:Text('',style:TextStyle(color:Colors.white),), accountEmail:Text(' ',style:TextStyle(color:Colors.blueAccent))
          ,currentAccountPicture:Text(' '),
          
          ),
          ),
              SizedBox(
              height: 45,
              child: Container(
                child: Row(
                  
               children: [
              CircleAvatar(radius: 40,
              backgroundColor:Color(0xFF17203A),
                  child: Image.asset('lib/Images/sed1.png'),
                  ),
                  Text('Dr.Ahmed Abdelaziz',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontFamily: 'Roboto',fontWeight: FontWeight.w600)),
                
               ],
                ),
              ),
            ),
      SizedBox(height: 10,),
          SizedBox(
              height: 45,
              child: Container(
                margin: EdgeInsets.only(right:15),
                decoration:BoxDecoration(
                                  color: Colors.blueAccent.withOpacity(0.1),
                                  borderRadius:BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20))
                ),
                child: Center(
                  child: ListTile(
                    
                    leading: Icon(Icons.person,color:Colors.white,),
                    title: Text('Doctors',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontFamily: 'Roboto',fontWeight: FontWeight.w400)),
                     trailing:Text('+12',style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white),),
                    onTap: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyDoctor()),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                leading: Icon(Icons.medical_information,color: Colors.white,),
                                 
                title: Text('Medical Records',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Medical_RecordsPage1()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                leading: Icon(Icons.local_pharmacy,color: Colors.white,),
                title: Text('Pharmacy',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400)),
                               trailing:Container(
                  height: 25,width: 50,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.green,
                  borderRadius:BorderRadius.circular(10)
                  ),
                  child:Center(child: Text('8 new',style:TextStyle(color:Colors.white)),)
                  ),    

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPharmaciee()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                leading: Icon(Icons.medical_information_outlined,color:Colors.white,),
                                                 
                title: Text('Medicine',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Medical_RecordsPage3()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                leading: Icon(Icons.search,color:Colors.white,),
                                                 
                title: Text('Analysis lab',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchLabo()),
                  );
                },
              ),
            ),
            
            SizedBox(
              height: 40,
              child: ListTile(
                  trailing:Container(
                  height: 25,width: 50,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue,
                  borderRadius:BorderRadius.circular(10)
                  ),
                  child:Center(child: Text('2 new',style:TextStyle(color:Colors.white),),)
                  ),
                leading: Icon(Icons.calendar_month,color: Colors.white,),
                title: Text('Appointmen',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAppointments()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                leading: Icon(Icons.chat,color: Colors.white,),
                                                                 
                title: Text('questions',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Questions()),
                  );
                },
              ),
            ),
 SizedBox(height: 10,),
            Container(height:10,color:Colors.white.withOpacity(0.05),),
            SizedBox(height: 10,),
            SizedBox(
              height: 40,
              child: ListTile(
                leading: Icon(Icons.help,color:Colors.white,),
                title: Text('Help Center',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400)),
                                                                 
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Medical_RecordsPage1()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                leading: Icon(Icons.privacy_tip,color: Colors.white,),
                title: Text('Privacy & Policy',style:TextStyle(color:Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400)),
                                                                 
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Medical_RecordsPage1()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40
              ,child:    ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
                                                               
              title: Text('Settings',style:TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactScreen()),
                );
              },
            ),
     )

             ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: Center(
          child: Text('Settings Screen Content'),
        ),
      ),
    );
  }
}

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Text('Contact Screen Content'),
      ),
    );
  }
}