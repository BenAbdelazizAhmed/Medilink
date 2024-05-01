import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Acceuil.dart';
import 'package:op/MedelinkMessage.dart';
import 'package:op/ProfileSettings.dart';

class ProfileDoctor extends StatefulWidget {
  const ProfileDoctor({super.key});

  @override
  State<ProfileDoctor> createState() => _ProfileDoctorState();
}

class _ProfileDoctorState extends State<ProfileDoctor> {
    int selectedIndex = 0; 

   void _onItemTapped(int index) {
   int _selectedIndex = 0;

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
        MaterialPageRoute(builder: (context) =>     MedelinkMessage(),),
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
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('Doctor Details',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
      body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 620,
              child: ListView.builder(
                itemCount: 10,
                padding: EdgeInsets.only(top: 0),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 20),
                      child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          SizedBox(height: 5),
                          Container(
                            height: 135,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 6,
                                  blurRadius: 4,
                                  color: Colors.black.withOpacity(0.05),
                                  offset: Offset(1, 1),
                                ),
                                
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 110,
                                      margin: EdgeInsets.only(top: 10,left: 10),
                                      height: 110,
                                      decoration: BoxDecoration(
                                        
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'lib/Images/rpc.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Expanded(
                                      child: Container(
                                        height: 120,
                                        width: 240,
                                        margin:EdgeInsets.only(top: 10,right: 10,),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Dr. Ahmed Ben Abdelaziz',
                                                      style: TextStyle(color: Color(0xff0099E5)),
                                                    )
                                                  ],
                                                ),
                                                Icon(Icons.favorite_border_outlined, color: Color(0xff7BC1B7)),
                                              ],
                                            ),
                                            Divider(color: Colors.white, height: 1.5),
                                            Row(
                                              children: [
                                                Icon(Icons.place_outlined, color: Colors.black54, size: 15),
                                                SizedBox(width: 4),
                                                Text(
                                                  'Monastir Avenue bourguiba',
                                                  style: TextStyle(color: Colors.black54),
                                                ),
                                              ],
                                            ),
                                     SizedBox(height: 3,),
                                                 Row(
                                                   children: [
                                                        Text(
                                                  'Reviews :',
                                                  style: TextStyle(color: Colors.black54),
                                                ),
                                                     RatingBar.builder(
                                                                                              
                                                                             initialRating: 3,
                                                                             minRating: 1,
                                                                             direction: Axis.horizontal,
                                                                             allowHalfRating: true,
                                                                             itemCount: 4,
                                                                             itemSize:  16,
                                                                             itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                                                             itemBuilder: (context, _) => Icon(
                                                                               Icons.star,
                                                                               color: Color(0xffffa04b),
                                                                             ),
                                                                             onRatingUpdate: (rating) {
                                                                               print(rating);
                                                                             },
                                                                            ),
                                                   ],
                                                 ),
                                                                          SizedBox(height: 15,),

                                               Row(
                                              children: [
                                                SizedBox(width: 110,),
                                                Container(
                                 height: 30,
                            width: 120,
                              decoration: BoxDecoration(
                                                            color:Color(0xff6db0d0),
                                                            border: Border.all(
                                                              color: Color(0xff6db0d0)
                                                            ),
                                                                borderRadius:BorderRadius.circular(10)
                            
                              ),
                               
                              
                            child:Center(child: Text('Book Now',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold),))),
                         
                                              ],
                                            ),
                                            Expanded(child: Container()),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 65,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Patients',
                                        style: TextStyle(color: Colors.black54, fontSize: 14, fontFamily: 'Poppins'),
                                      ),
                                      Expanded(child: Container()),
                                      Row(
                                        children: [
                                          Icon(Icons.person, color: Color(0xff02aeed)),
                                          SizedBox(width: 5),
                                          Text(
                                            '1000+',
                                            style: TextStyle(color: Color(0xff5d6062), fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 65,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Experiences',
                                        style: TextStyle(color: Colors.black54, fontSize: 14, fontFamily: 'Poppins'),
                                      ),
                                      Expanded(child: Container()),
                                      Row(
                                        children: [
                                          Icon(Icons.work, color: Color(0xff02aeed)),
                                          SizedBox(width: 5),
                                          Text(
                                            '5 YEARS',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.black54,
                                              fontFamily: 'Poppins',
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 65,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Reviews', style: TextStyle(color: Colors.black54)),
                                      Expanded(child: Container()),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SizedBox(width: 5),
                                          Text(
                                            '5.0',
                                            style: TextStyle(color: Color(0xff5d6062), fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                            child: Text(
                              'About me :',
                              style: TextStyle(color: Color(0xff0A0B0C), fontFamily: 'Roboto', fontSize: 18,fontWeight: FontWeight.w900),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(
                              'dr. ahmed is a dental specialist the field of orthonitics with extensive training and experience in the field of orthonitics',
                              style: TextStyle(
                               fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          ],
                      ),
                    );
                  } else {
                    return Container(height: 410, width: 110,
                    child: Column(
                        children: [
                    
                          
                          Container(
                            height: 350.h,
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
                                          AssetImage('lib/Images/rpc.png'),
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
                                              'Dr Ahmed Abdelaziz',
                                              style: TextStyle(
                                                fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff48555B),
                                              ),
                                            ),
                                            SizedBox(width: 125.w),
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
                                color: Colors.white,
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                      "Que signifie être en bonne santé ?",
                                      style: TextStyle(
                                          fontSize: 17,
                                       fontFamily: 'Poppins',
                                          color: Color(0xff364045))),
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
                      ));
                
                  }
                },
              ),
            ),
          ],
        ), bottomNavigationBar:BottomNavigationBar(
              currentIndex: selectedIndex,
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
    
    );
  }
}