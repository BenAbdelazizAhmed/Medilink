import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Acceuil.dart';
import 'package:op/MedelinkMessage.dart';
import 'package:op/ProfileSettings.dart';

class makeappoinment extends StatefulWidget {
  const makeappoinment({super.key});

  @override
  State<makeappoinment> createState() => _makeappoinmentState();
}

class _makeappoinmentState extends State<makeappoinment> {

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
  final PageController controller = PageController();
  int selectedIndex = 0; 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(       onPressed: () {
  Navigator.pop(context);
},icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('Appoinment',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
      body:Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
            
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,bottom: 20),
                child: ListView(
                  children: [
                    SizedBox(height: 5,),
                  Container(
                    height: 100,width: double.infinity,decoration:BoxDecoration(borderRadius: BorderRadius.circular(10)
                    ,color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,blurRadius: 2,
                        color: Colors.black.withOpacity(0.05),
                        offset:Offset(1,1),
                      ),
                        BoxShadow(
                        spreadRadius: 1,blurRadius: 2,
                        color: Colors.black.withOpacity(0.05),
                        offset:Offset(-1,-1),
                      ),
                    ]
                    ),
                  child:Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start
                        ,children: [
                        Container(width: 120,height: 100,
                        decoration:BoxDecoration( color:Color.fromRGBO(243, 249, 249, 1),borderRadius: BorderRadius.circular(10)),
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(15)
                        ,child:  Image.asset('lib/Images/sed1.png',fit:BoxFit.contain,),
                        )
                       ),
                       SizedBox(width: 15,),
                       Padding(
                         padding: const EdgeInsets.only(top: 5.0),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start
                          ,children: [
                          Text('Dr.James Gun',style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff02aeed),     fontFamily: 'Roboto',
                 fontSize: 15 ),),
                           Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Specialist :',style:TextStyle(color: Colors.black87 )),
                              SizedBox(width: 5,),
                              Text('Dermalogiste',style:TextStyle(color: Colors.black54 ))
                            ],
                          ),  
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Payment :',style:TextStyle(color: Colors.black87 )),
                              SizedBox(width: 5,),
                              Text('120 Dinar',style:TextStyle(color: Colors.black54 ))
                            ],
                          ),  
                              Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Location :',style:TextStyle(color: Colors.black87 )),
                              SizedBox(width: 5,),
                              Text('Monastir',style:TextStyle(color: Colors.black54 ))
                            ],
                          ),  
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                           ],
                          )
                                       ,SizedBox(height: 10,),
                                       Row(children: [
                                       
                         
                                       ],),
                                  ],),
                       ),
                      ]),
              
                    ],
                  ),
                  ),
                             SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.only(top: 10.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween
                          ,children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 65,width: 110
                            ,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                                                border: Border.all(color: Colors.black, width: 0.05),
                         
                                       color:Colors.white,
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('Patients',style:TextStyle(color: Colors.black54,  fontSize: 14,
                                                        fontFamily: 'Poppins',),),
                              Expanded(child: Container()),
                              Row(children: [
                                Icon(Icons.person,color:Color(0xff02aeed)),
                               SizedBox(width: 5,),
                                Text('1000+',style:TextStyle(color: Color(0xff5d6062),fontWeight: FontWeight.bold))
                              ],)
                            ],),
                            ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 65,width: 110
                            ,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                                                border: Border.all(color: Colors.black, width: 0.05),
                         
                                       color:Colors.white,
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('Experiences',style:TextStyle(color: Colors.black54,  fontSize: 14,
                                                        fontFamily: 'Poppins',),),
                              Expanded(child: Container()),
                              Row(children: [
                                Icon(Icons.work,color:Color(0xff02aeed)),
                               SizedBox(width: 5,),
                                Text('5 YEARS',style:TextStyle(fontWeight: FontWeight.bold,  fontSize: 14,color: Colors.black54,
                                                        fontFamily: 'Poppins',))
                              ],)
                            ],),
                            ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 65,width: 110
                            ,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                                                border: Border.all(color: Colors.black, width: 0.05),
                         
                                       color:Colors.white,
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('Reviews',style:TextStyle(color:Colors.black54),),
                              Expanded(child: Container()),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start
                                ,children: [
                              
                  RatingBar.builder(
                                                 
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 1,
                                itemSize:  20,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Color(0xffffa04b),
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                               ),
                               SizedBox(width:5,),
                                Text('5.0',style:TextStyle(color: Color(0xff5d6062),fontWeight: FontWeight.bold,))
                                     ],)
                            ],),
                            ),
                            ],),
                       ),
                    
                             SizedBox(height: 10,),
              
                      Padding(
                        padding: const EdgeInsets.only(top:5.0,bottom: 5),
                        child: Text('Details :',style:TextStyle(color: Color(0xff0A0B0C),     fontFamily: 'Roboto',
                 fontSize: 18),),
                      )
                       ,  Padding(
                         padding: const EdgeInsets.symmetric(horizontal:5.0),
                         child: Text('dr. ahmed is a dental specialist the field of orthonitics with extensive training and experience in the field of orthonitics with extensive training and experience in the field of orthonitics ',style:TextStyle( 
                                                    fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                    color: Colors.black54,
                                                  ),),
                       ),
                         
                            Expanded(child:Container(
                              width: double.infinity,
                            
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                        Container(
                                height: 119,
                                child:EasyDateTimeLine(
                initialDate: DateTime.now(),
                onDateChange: (selectedDate) {
                },
                activeColor: Color(0xff02aeed),
                dayProps: const EasyDayProps(
                  height: 55,
                  borderColor: Color(0xff02aeed),
                  todayHighlightStyle: TodayHighlightStyle.withBackground,
                  todayHighlightColor: Colors.red,
                  todayMonthStrStyle: TextStyle(color: Colors.white),
                  todayNumStyle: TextStyle(color: Colors.white),
                  todayStrStyle: TextStyle(color: Colors.white),
                  activeDayNumStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  activeMothStrStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  activeDayStrStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  inactiveDayNumStyle: TextStyle(color: Colors.black54)
                ),
              )
              
                              ),
                              SizedBox(height: 10,),
                               Text('Schedule',style:TextStyle(color: Color(0xff0A0B0C),     fontFamily: 'Roboto',
              fontSize: 17,),),
                           SizedBox(height: 10,),
              
                     Container(
                      height: 30,width: double.infinity,
                       child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                             color:Color(0xff02aeed),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child:Center(child: Text('08:00 PM',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          ),
                        SizedBox(width: 10,),
                                   Container(
                            height: 35,
                            width: 110,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              border: Border.all(
                                color:Color(0xff6db0d0)
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child:Center(child: Text('10:00 pm',style:TextStyle(color:Color(0xff6db0d0),fontWeight: FontWeight.bold),)),
                          ),
                                       SizedBox(width: 5,),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color:Colors.white,
                                border: Border.all(
                                color:Color(0xff6db0d0)
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child:Center(child: Text('12:00 pm',style:TextStyle(color:Color(0xff6db0d0),fontWeight: FontWeight.bold),)),
                          ),
                        SizedBox(width: 10,),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color:Colors.white,
                                border: Border.all(
                                color:Color(0xff6db0d0)
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child:Center(child: Text('04:00 PM',style:TextStyle(color:Color(0xff6db0d0),fontWeight: FontWeight.bold)),
                          ),
                          ),
                       ],
                                   ),
                     ),
                  SizedBox(height: 10,),
                    Text('Complaint',style:TextStyle(color: Color(0xff0A0B0C),     fontFamily: 'Roboto',
                 fontSize: 17,),),
                  SizedBox(height: 5,),
                  Container(
                    width:double.infinity,
                    height: 85,
                    decoration:BoxDecoration(
                                    color: Colors.white,
              
                border: Border.all(
                                color:Colors.black.withOpacity(0.2)
                              ),
                              borderRadius: BorderRadius.circular(10)
                     
                            ),
                              ),
                     
                 
                              ],),
                             ))
                ]),
              ),
            ),
          ),
      Container(
              margin:EdgeInsets.only(left: 20,right: 20),
              
              height: 50,
              decoration:BoxDecoration(
                          color:Color(0xff0099E5) ,
                          borderRadius: BorderRadius.circular(10)
              ),
            width: double.infinity,
            child:Center(child:Text('Make appointment',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
            )
        ],
      ),
             bottomNavigationBar:BottomNavigationBar(
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
    
      ),
      
    );
  }
}