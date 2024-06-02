import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/MakeAppoinment.dart';
class SearchDoct extends StatefulWidget {
  const SearchDoct({super.key});

  @override
  State<SearchDoct> createState() => _SearchDoctState();
}

class _SearchDoctState extends State<SearchDoct> {
  List<String> imagePaths = [
  'lib/Images/sed1.png',
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 35.h, // Using ScreenUtil for height
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'All Doctors',
          style: TextStyle(
            color: Color(0xff0B8FAC),
            fontFamily: 'Roboto',
            fontStyle: FontStyle.italic,
            fontSize: 20.sp, // Using ScreenUtil for font size
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.h, left: 18.w, right: 18.w), // Using ScreenUtil for padding
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 85.h, // Using ScreenUtil for height
              child: Column(
                children: [
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
                  SizedBox(height: 10.h), // Using ScreenUtil for height
                  Container(
                    height: 25.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 25.h, // Using ScreenUtil for height
                          width: 80.w, // Using ScreenUtil for width
                          decoration: BoxDecoration(
                            color: Color(0xff6db0d0),
                            borderRadius: BorderRadius.circular(10.r), // Using ScreenUtil for border radius
                          ),
                          child: Center(child: Text('Doctors', style: TextStyle(color: Colors.white),)),
                        ),
                     SizedBox(width: 10.w,),
                        Container(
                          height: 25.h, // Using ScreenUtil for height
                          width: 90.w, // Using ScreenUtil for width
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xff6db0d0)),
                            borderRadius: BorderRadius.circular(10.r), // Using ScreenUtil for border radius
                          ),
                          child: Center(child: Text('Pharmacy', style: TextStyle(color: Color(0xff6db0d0)),)),
                        ),
                                           SizedBox(width: 10.w,),
                        Container(
                          height: 25.h, // Using ScreenUtil for height
                          width: 80.w, // Using ScreenUtil for width
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xff6db0d0)),
                            borderRadius: BorderRadius.circular(10.r), // Using ScreenUtil for border radius
                          ),
                          child: Center(child: Text('Medicine', style: TextStyle(color: Color(0xff6db0d0)),)),
                        ),
                                           SizedBox(width: 10.w,),
                        Container(
                          height: 25.h, // Using ScreenUtil for height
                          width: 100.w, // Using ScreenUtil for width
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xff6db0d0)),
                            borderRadius: BorderRadius.circular(10.r), // Using ScreenUtil for border radius
                          ),
                          child: Center(child: Text('Analysis lab', style: TextStyle(color: Color(0xff6db0d0)),)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h), // Using ScreenUtil for height
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('323 Doctors', style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 5.h), // Using ScreenUtil for height
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 140.h, // Using ScreenUtil for height
                      margin: EdgeInsets.only(bottom: 15.h), // Using ScreenUtil for margin
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r), // Using ScreenUtil for border radius
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.06),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: Offset(1, 2),
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.06),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: Offset(-1, -2),
                          )
                        ]
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 100.h, // Using ScreenUtil for height
                                width: 70.w, // Using ScreenUtil for width
                                padding: EdgeInsets.only(top: 15.h), // Using ScreenUtil for padding
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r), // Using ScreenUtil for border radius
                                  color: Color.fromRGBO(243, 249, 249, 1),
                                ),
                                child: Image.asset(imagePaths[index], fit: BoxFit.fill,),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 15.h, right: 15.w, left: 15.w, bottom: 10.h), // Using ScreenUtil for padding
                                width: 220.w, // Using ScreenUtil for width
                                height: 140.h, // Using ScreenUtil for height
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r), // Using ScreenUtil for border radius
                                  color: Color.fromRGBO(253, 255, 255, 1),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text('Dr ', style: TextStyle(color: Colors.black)),
                                            Text('Ahmed Abdelaziz', style: TextStyle(color: Color(0xff0099E5))),
                                          ],
                                        ),
                                        Icon(Icons.favorite_border_outlined, color: Color(0xff7BC1B7)),
                                      ],
                                    ),
                                    Divider(color: Colors.white, height: 1.5), // Assuming you want the divider to be white
                                    Text('Médecin Angiologue ', style: TextStyle(color: Colors.black54,fontSize: 12.sp)),
                                    SizedBox(height: 2.5.h), // Using ScreenUtil for height
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 4,
                                      itemSize: 16.sp, // Using ScreenUtil for size
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0.w), // Using ScreenUtil for padding
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Color(0xffffa04b),
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    SizedBox(height: 2.5.h), // Using ScreenUtil for height
                                    Row(
                                      children: [
                                        Icon(Icons.place_outlined, color: Colors.black54, size: 15.sp), // Using ScreenUtil for size
                                        SizedBox(width: 4.w), // Using ScreenUtil for width
                                        Text('Monastir', style: TextStyle(color: Colors.black54)),
                                      ],
                                    ),
                                    Expanded(child: Container()), // Expanded to push the next row to the bottom
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10.w), // Using ScreenUtil for padding
                                          height: 25.h, // Using ScreenUtil for height
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(color: Color(0xff7BC1B7)),
                                            borderRadius: BorderRadius.circular(5.r), // Using ScreenUtil for border radius
                                          ),
                                          child: Center(child: Text('08:30 AM', style: TextStyle(color: Color(0xff7BC1B7), fontWeight: FontWeight.w600),)),
                                        ),
                                        SizedBox(width: 15,),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => makeappoinment()),
                                            );
                                          },
                                          child: Container(
                                            height: 25.h, // Using ScreenUtil for height
                                            width: 80.w, // Using ScreenUtil for width
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(color: Color(0xff0099E5)),
                                              borderRadius: BorderRadius.circular(5.r), // Using ScreenUtil for border radius
                                            ),
                                            child: Center(child: Text('Book', style: TextStyle(color: Color(0xff0099E5), fontWeight: FontWeight.bold),)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
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
    );
  }
}