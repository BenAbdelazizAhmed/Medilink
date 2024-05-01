import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/MedelinkMessage.dart';
import 'package:op/ProfileSettings.dart';
import 'package:op/SearchDoctor.dart';
import 'package:op/SearchLabo.dart';
import 'package:op/my_appointments.dart';
import 'package:op/searchpharmac.dart';

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
        key: _scaffoldKey, 
        backgroundColor: Colors.white,
       body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 0, left: 5, right: 5),
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
                            height: 390.h,
                            width: double.infinity,
                            child:Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10,right: 10,top: 20),
                                  height: 145.h,
                                  color: Colors.white,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Row(children: [
                                        Container(
                                          
                                          height: 55.h,width: 55.w,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                        child:ClipRRect(
                                          borderRadius: BorderRadius.circular(10)
                                          ,child: Image.asset('lib/Images/sed1.png',fit: BoxFit.fill,)),
                                        ),
                                        SizedBox(width: 10.w,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text('Hello, ',style:TextStyle(color: Color(0xff0A0B0C),     fontFamily: 'Roboto',
   fontSize: 18)),
                                                Text('Ahmed !',style:TextStyle(color:Color(0xff0099E5),     fontFamily: 'Roboto',
   fontSize: 18),)
                                              ],
                                            ),
                                            SizedBox(height: 3.h,),
                                            Text('Welcome To Medilink',style:TextStyle(fontFamily: 'Roboto',fontSize:15,color:Colors.black54,))
                                          ],
                                        ),
                                        Expanded(child:Container()),
                                         CircleAvatar(
                                          radius: 17,
                                          backgroundColor: Colors.white,
                                          backgroundImage:AssetImage('lib/Images/heart.png'),
                                        ),
                                        SizedBox(width: 15.w,),
                                        CircleAvatar(
                                          radius: 12,
                                          backgroundColor: Colors.white,
                                          backgroundImage:AssetImage('lib/Images/notification.png'),
                                        ),
                                    
                                      ],),
                                          GestureDetector(
                                            onTap: (){
                                                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchDoct()),
            );
                                            },
                                            child: Row(
                                              children: [
                                                Container(
                                                                  margin: EdgeInsets.only(top: 15),
                                                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                                                  height: 45.h,
                                                                  width: 255.w,                  decoration: BoxDecoration(
                                                                    
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
                                                                        borderRadius: BorderRadius.circular(10)
                                                                  ),
                                                                  child:Row(
                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              Icon(Icons.search),
                                                                              SizedBox(width:8.w,),
                                                                               Text('find Your Doctor,pharmacie...',style:TextStyle(color: Colors.black45,),)
                                                                                   ],
                                                                          ),
                                                                          
                                                                 ],
                                                                  ),
                                                                ),
                                             TextButton(onPressed:(){}, child:Text('Map View',style:TextStyle(fontWeight: FontWeight.bold,color:Color(0xff0099E5)),))
                  
                                              ],
                                            ),

                                          ),SizedBox(width: 5.w,),
                
                    
                   ],
                                  ),
                                  
                                ),
                                                         
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white
                            ,borderRadius: BorderRadius.circular(10)),
                          height: 160.h,width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10
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
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Analysis lab',style:TextStyle(color: Colors.black,     fontFamily: 'Roboto',
                               fontSize: 18),),
                                        TextButton(onPressed:(){
                                          
                                        },child:Text('See All',style:TextStyle(color: Colors.blue)),)
                                      ],
                                    ),
                                  ),
                          )
                            
                             
                                  , Container(
              height: 40.h,width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
               child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                   Container(
                    height: 30.h,
                    width: 95.w,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color:Colors.white,
                      
                        border: Border.all(
                        color:Color(0xff6db0d0),
                                                width: 0.5

                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/Images/stethoscope.png',height: 22,),
                        SizedBox(width: 10,),
                        Text('Doctor',style:TextStyle(color:Color(0xff6db0d0),fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
              SizedBox(width: 15.w,),
                       GestureDetector(onTap: (){
                          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchPharmaciee()),
            );},
                         child: Container(
                                             height: 23.h,
                                             width: 115.w,
                                             padding: EdgeInsets.symmetric(horizontal: 15),
                                             decoration: BoxDecoration(
                                               color:Colors.white,
                          border: Border.all(
                          color:Color(0xff6db0d0),
                          width: 0.4
                                               ),
                                               borderRadius: BorderRadius.circular(10)
                                             ),
                                             child:Row(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                          Image.asset('lib/Images/medicament.png',height: 22,),
                          SizedBox(width: 10,),
                          Text('Pharmacy',style:TextStyle(color:Color(0xff6db0d0),fontWeight: FontWeight.bold)),
                                               ],
                                             ),
                                           ),
                       ),
                           SizedBox(width: 15.w,),
                  
                  Container(
                    height: 23.h,
                    width: 100.w,
                   decoration: BoxDecoration(
                      color:Colors.white,
                        border: Border.all(
                        color:Color(0xff6db0d0),
                        width: 0.4
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center
                      ,children: [
                      Image.asset('lib/Images/prescription.png',height: 22,),
                      SizedBox(width: 10,),
                      Text('Medicine',style:TextStyle(color:Color(0xff6db0d0),fontWeight: FontWeight.bold)),
                    ],),
                  ),
                          SizedBox(width: 15.w,),
                  
                  GestureDetector(
                      onTap: (){
                                                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchLabo()),
            );
                                            },
                    child: Container(
                      height: 23.h,
                      width: 100.w,
                     decoration: BoxDecoration(
                        color:Colors.white,
                          border: Border.all(
                          color:Color(0xff6db0d0),
                          width: 0.4
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center
                        ,children: [
                        Image.asset('lib/Images/prescription.png',height: 22,),
                        SizedBox(width: 10,),
                        Text('Analysis lab',style:TextStyle(color:Color(0xff6db0d0),fontWeight: FontWeight.bold)),
                      ],),
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
                              Divider(                        color:Colors.black.withOpacity(0.2),
                          height: 15.h,
)                   ,  
                          Container(
                            height: 270.h,
                            margin: EdgeInsets.only(bottom: 15),
                          width: double.infinity,
                          color:Colors.white,
                          child:Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 10),
                              
                                              
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sponsorisé'),
                                  IconButton(onPressed:(){}, icon: Icon(Icons.more_horiz))
                                ],
                              ),
                            ),
                            Container(
                               height: 200.h,
                                  width: double.infinity,
                              child: ListView.builder(
                                itemCount: 10,
                                scrollDirection:Axis.horizontal
                                ,itemBuilder:(context,id){
                                return Container(
                                  margin: EdgeInsets.only(left: 10),
                                  padding: EdgeInsets.all(10),
                                  height: 190.h,
                                  width: 220.w,
                                  decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                      
                                                            border: Border.all(color: Colors.black,width: 0.08.w ),
                                                   ),
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start
                                    ,children: [
                                    Row(
                                      children: [
                                      CircleAvatar(radius: 20,
                                      backgroundImage:AssetImage('lib/Images/sed1.png'),
                                      ),
                                      SizedBox(width: 10.w,),
                                          Text(
                                              'Dr Albert Ambro',
                                              style: TextStyle(
                                                fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff48555B),
                                              ),
                                            ),
                                       
                                      Expanded(child:Container()),
                                      Icon(Icons.more_horiz)
                                    ],)
                                  ,  SizedBox(height: 5.h,)
                                  ,
                                  Expanded(child: Image.asset( 'lib/Images/raaaa.jpg',fit: BoxFit.fill,))
                                  ]),
                                );
                              }),
                            )
                            ,Divider(
                              color: Colors.black12,
                              height: 10.h,
                            )
                          ]),
                          ),
                        ],
                      );
                    }
                    
                     else if (index == 7) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10.0),
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
                                      bottom: 30,
                                      right: 40,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Acheter',
                                          style: TextStyle(
                                            fontSize: 16,
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
                              SizedBox(height:15,),
                            Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Recent Posts',style:TextStyle(color:Colors.black,     fontFamily: 'Roboto',
   fontSize: 18)),
                                       ],
                                  ),
                                ),
                                SizedBox(height: 15.h,),
                          Container(
                            height: 390.h,
                            margin: EdgeInsets.only(
                                bottom: 15, left: 5, right: 5),
                            padding: EdgeInsets.only(top: 10, left: 5, right: 5),
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
                                                fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff48555B),
                                              ),
                                            ),
                                            SizedBox(width: 130.w),
                                            Icon(
                                              Icons.more_horiz,
                                              color: Colors.black87,
                                              size: 22,
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
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                      "un état complet de bien-être physique, mental et social, et ne consiste pas seulement en une absence de maladie",
                                      style: TextStyle(
                                          fontSize: 17,
                                       fontFamily: 'Poppins',
                                          color: Colors.black87)),
                                ),
                                SizedBox(height: 4.h),
                                Container(
                                  width: double.infinity,
                                  height: 160.h,
                                  padding: EdgeInsets.only(right: 5),
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
                                  padding: const EdgeInsets.symmetric(horizontal:10.0),
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
                            height: 390.h,
                            margin: EdgeInsets.only(
                                bottom: 15, left: 5, right: 5),
                            padding: EdgeInsets.only(top: 10, left: 5, right: 5),
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
                                                fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff48555B),
                                              ),
                                            ),
                                            SizedBox(width: 130.w),
                                            Icon(
                                              Icons.more_horiz,
                                              color: Colors.black87,
                                              size: 22,
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
                                color: Color(0xfff9f9f9),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                      "un état complet de bien-être physique, mental et social, et ne consiste pas seulement en une absence de maladie",
                                      style: TextStyle(
                                          fontSize: 17,
                                       fontFamily: 'Poppins',
                                          color: Colors.black87)),
                                ),
                                SizedBox(height: 4.h),
                                Container(
                                  width: double.infinity,
                                  height: 160.h,
                                  padding: EdgeInsets.only(right: 5),
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
                                  padding: const EdgeInsets.symmetric(horizontal:10.0),
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
