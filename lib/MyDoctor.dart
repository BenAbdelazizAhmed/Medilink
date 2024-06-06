import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/MakeAppoinment.dart';

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
                toolbarHeight: 35,
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){
                        Navigator.pop(context);

          },icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('My Doctors',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
     body:Container(
        padding: EdgeInsets.only(top: 1.h, left: 18.w, right: 18.w), // Using ScreenUtil for padding
        height: double.infinity,
        width: double.infinity,
        color:Colors.white,
        child: Column(
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
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween
              ,children: [
              Text('4 Doctors'),
              TextButton(onPressed:(){}, child: Text('Filtrer',style:TextStyle(color: Color(0xff0099E5)),))
            ],),
          Expanded(
              child: Container(
                color:Colors.white,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 110.h, 
                      margin: EdgeInsets.only(bottom: 15.h,left: 5,right: 5,top: 1), // Using ScreenUtil for margin
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r), // Using ScreenUtil for border radius
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: Offset(1, 2),
                          ),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: Offset(-1, -2),
                          )
                        ]
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                              Container(width: 10,
            decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.3),
            borderRadius:BorderRadius.only(topLeft:Radius.circular(10),bottomLeft: Radius.circular(10))
            ),
            ),
            SizedBox(width: 10,),
                          Column(
                            children: [
                             
                                CircleAvatar(backgroundImage:AssetImage(imagePaths[index], ),radius: 25,),
                              
                              SizedBox(height: 15,),
                              Text('Availabe',style:TextStyle(color:Colors.green,fontSize: 12.sp),),
                              Text('08:30 pm',style:TextStyle(fontSize: 12.sp))
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 15.h, right: 15.w, left: 15.w, bottom: 10.h), // Using ScreenUtil for padding
                                width: 220.w, // Using ScreenUtil for width
                                height: 110.h, // Using ScreenUtil for height
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r), // Using ScreenUtil for border radius
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
                                       Text("150\$",style:TextStyle(color: Color(0xff0099E5)),)
                                      ],
                                    ),
                                    Divider(color: Colors.black.withOpacity(0.1), height: 1.5), // Assuming you want the divider to be white
                                    Text('Médecin Angiologue ', style: TextStyle(color: Colors.black54,fontSize: 12.sp)),
                                    SizedBox(height: 2.5.h), // Using ScreenUtil for height
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 1,
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
                                        Text('4.8 124 Reviews',style: TextStyle(color: Colors.black54,fontSize: 12.sp))
                                      ],
                                    ),
                                    SizedBox(height: 2.5.h), // Using ScreenUtil for height
                                    Row(
                                      children: [
                                        Icon(Icons.place_outlined, color: Colors.black54, size: 15.sp), // Using ScreenUtil for size
                                        SizedBox(width: 4.w), // Using ScreenUtil for width
                                        Text('Monastir', style: TextStyle(color: Colors.black54)),
                                   Expanded(child: Container()),
                                           
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
                                    Expanded(child: Container()), // Expanded to push the next row to the bottom
                                         Container(width: 10,
            decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.3),
            borderRadius:BorderRadius.only(topLeft:Radius.circular(10),bottomLeft: Radius.circular(10))
            ),
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
   
      ),
    );
  }
}