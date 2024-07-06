import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDoctor extends StatefulWidget {
  const MyDoctor({super.key});

  @override
  State<MyDoctor> createState() => _MyDoctorState();
}

  List<String> imagePaths = [
  'lib/Images/Doc1.jpg',
    'lib/Images/sed3.png',
      'lib/Images/Doc2.jpg',
        'lib/Images/Doc4.jpg',
  'lib/Images/Doc4.jpg',
  'lib/Images/sed2.png',
   'lib/Images/sed3.png',
  'lib/Images/sed2.png',
    'lib/Images/sed2.png',
];


class _MyDoctorState extends State<MyDoctor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
          Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    title: Text(
      'My Doctors',
      style: TextStyle(
        color: Color(0xff4491f9),
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ),
    ),
  ),  body:Container(
        padding: EdgeInsets.only(top: 1.h, left: 15.w, right: 10.w), // Using ScreenUtil for padding
        height: double.infinity,
        width: double.infinity,
        color:Colors.white,
        child: Column(
          children: [
                                Container(
              height: 85,
            child:Column(children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.w), // Using ScreenUtil for horizontal padding
                        height: 40.h, // Using ScreenUtil for height
                        width: 240.w, // Using ScreenUtil for width
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.03),
                          borderRadius: BorderRadius.circular(10.r), // Using ScreenUtil for border radius
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.search),
                                SizedBox(width: 8.w), // Using ScreenUtil for width
                                Text('find Your Doctor,pharma', style: TextStyle(color: Colors.black38,fontSize: 13.sp),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 4.w), // Using ScreenUtil for width
                      TextButton(
                        onPressed: () {},
                        child: Text('Map View', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff7BC1B7),fontSize: 11.sp),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25,
                  width: 45,
                  decoration: BoxDecoration(
                    color:Color(0xff6db0d0),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:Center(child: Text('All',style:TextStyle(color: Colors.white),)),
                ),
            Container(
                  height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    border: Border.all(
                      color:Color(0xff6db0d0)
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:Center(child: Text('Location',style:TextStyle(color:Color(0xff6db0d0)),)),
                ),
                     Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                    color:Colors.white,
                      border: Border.all(
                      color:Color(0xff6db0d0)
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:Center(child: Text('open',style:TextStyle(color:Color(0xff6db0d0),)),
                ),
                ),
          
                Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                    color:Colors.white,
                      border: Border.all(
                      color:Color(0xff6db0d0)
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:Center(child: Text('Day',style:TextStyle(color:Color(0xff6db0d0)),)),
                ),

                Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    color:Colors.white,
                      border: Border.all(
                      color:Color(0xff6db0d0)
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:Center(child: Text('Night',style:TextStyle(color:Color(0xff6db0d0),)),
                ),
                ),
             ],
            ),
       
            ]),),
          SizedBox(height: 5,),
          
  Expanded(
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            childAspectRatio: 0.78, // Aspect ratio of each tile
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(right:5.w,bottom:10.w),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 4,
                    color: Colors.black.withOpacity(0.05)
                  ),
                  BoxShadow(

                  )
                ],
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                     height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
color: Color(0xfff1fafa),
                  ),
                   
                  child: Center(
                    child: Stack(
                      children: [
                          CircleAvatar(radius:35.r,
                      backgroundImage: AssetImage(imagePaths[index]),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 10
                        ,child: Container(
                          height: 20,width: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                        child: Row(children: [
                           RatingBar.builder(
                                                   
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemSize:  15,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Color(0xffffa04b),
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                 ),
                          Text('4.5', style: TextStyle(color: Color(0xff4491f9),fontWeight: FontWeight.bold),
                    )
                        ],),
                        ))
                      ],
                    ),
                  ),
                ),
                  SizedBox(height: 10.h),
                  Text(
                    'Dr. Ahmed Abdelaziz',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff4491f9),fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Monastir, 6yr',
                    textAlign: TextAlign.center,
                    style: TextStyle(color:Color(0xff4491f9).withOpacity(0.6)),
                  ),
                  SizedBox(height: 10.h),
                  GestureDetector(
                    onTap: () {
                      // Action on tap
                    },
                    child: Container(
                      height: 25.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                        color: Color(0xff4491f9),
                        border: Border.all(color: Color(0xff4491f9)),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Text(
                          'Book Consult',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
             )  ]   ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 4,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff4789FC),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedLabelStyle: TextStyle(color: Color(0xff4789FC)),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Image.asset('lib/Images/diag.png', height: 22.h), label: "Diagnostics"), // Using ScreenUtil for height
          BottomNavigationBarItem(icon: Image.asset('lib/Images/chat.png', height: 22.h), label: "Chat"), // Using ScreenUtil for height
          BottomNavigationBarItem(icon: Image.asset('lib/Images/user.png', height: 22.h), label: "Profile"), // Using ScreenUtil for height
        ],
      ),
   
      ),
    );
  }
}