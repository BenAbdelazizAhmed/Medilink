import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Acceuil.dart';
import 'package:op/MakeAppoinment.dart';
import 'package:op/MedelinkMessage.dart';
import 'package:op/ProfileSettings.dart';
import 'package:op/SearchDoctor.dart';

class pharmacie extends StatefulWidget {
  const pharmacie({Key? key}) : super(key: key);

  @override
  _pharmacieState createState() => _pharmacieState();
}
enum _SelectedTab { home, likes, search, profile }

class _pharmacieState extends State<pharmacie> {
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
        MaterialPageRoute(builder: (context) =>     makeappoinment(),),
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
                            height: 590.h,
                            width: double.infinity,
                            child:ListView(
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
                              
                           Container(height: 95,width: 160,
                           margin: EdgeInsets.only(top: 5,),
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
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
,                           color: Colors.white,
               
                           ),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start
                            ,children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10)
                              ,child:  Image.asset('lib/Images/pharma.jpg')),
                            Text('Pharmacie de nuit',style:TextStyle(fontWeight: FontWeight.bold),),
                            Row(children: [
                              Text('Open Now',style:TextStyle(color:Colors.green),),
                            SizedBox(width: 10,),
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
                          Text('5.0',style:TextStyle(fontWeight: FontWeight.bold),)

                            ],),
                            Container(
                                 height: 25,
                            width: 80,
                              decoration: BoxDecoration(
                                
                                                              color: Color(0xff0099E5),
                                                            border: Border.all(
                                                              color: Color(0xff0099E5)
                                                            ),
                                                                borderRadius:BorderRadius.circular(5)
                            
                              ),
                               
                              
                            child:Center(child: Text('130m away',style:TextStyle(color:Colors.white,),))),
                        
                           ],),
                           ),
                           SizedBox(width: 15,),
                              Container(height: 95,width: 160,
                           margin: EdgeInsets.only(top: 5,),
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
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
,                           color: Colors.white,
               
                           ),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start
                            ,children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10)
                              ,child:  Image.asset('lib/Images/pharma.jpg')),
                            Text('Pharmacie de nuit',style:TextStyle(fontWeight: FontWeight.bold),),
                            Row(children: [
                              Text('Open Now',style:TextStyle(color:Colors.green),),
                            SizedBox(width: 10,),
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
                          Text('5.0',style:TextStyle(fontWeight: FontWeight.bold),)

                            ],),
                            Container(
                                 height: 25,
                            width: 80,
                              decoration: BoxDecoration(
                                
                                                              color: Color(0xff0099E5),
                                                            border: Border.all(
                                                              color: Color(0xff0099E5)
                                                            ),
                                                                borderRadius:BorderRadius.circular(5)
                            
                              ),
                               
                              
                            child:Center(child: Text('130m away',style:TextStyle(color:Colors.white,),))),
                        
                           ],),
                           ),
                        
                            SizedBox(width: 15,),
                             Container(height: 90,width: 160,color: Colors.white,   child: Column(children: [
                            Image.asset('lib/Images/pharma.jpg')
                           ],))
                            ],
                          ))  ,
                         Container(
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
                     
                          Container(
                          decoration: BoxDecoration(
                            color: Colors.white
                            ,borderRadius: BorderRadius.circular(10)),
                          height: 130.h,width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10
                          )
                          ,child:ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ClipRRect(
                            borderRadius: BorderRadius.circular(10)
                            ,child: Image.asset('lib/Images/capti.png',fit:BoxFit.fill,)),
                            ClipRRect(
                            borderRadius: BorderRadius.circular(10)
                            ,child: Image.asset('lib/Images/capti.png',fit:BoxFit.fill,)),
                            ClipRRect(
                            borderRadius: BorderRadius.circular(10)
                            ,child: Image.asset('lib/Images/capti.png',fit:BoxFit.fill,)),
                        
                            ],
                          ))  ,
            SizedBox(height: 10,),
          Container(height: 190,width: double.infinity,
          color: Colors.white,
          child:  Row(children: [
            Container(height: 160,width: 130,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset('lib/Images/dolip.jpg',width: 100,),
                Text('Doliprane')
              ],
            ),
            ),
            SizedBox(width: 10,),
             Container(height: 160,width: 130,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset('lib/Images/dolip.jpg',width: 100,),
                Text('Doliprane')
              ],
            ),
            ),
            SizedBox(width: 10,),
             Container(height: 160,width: 110,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset('lib/Images/dolip.jpg',width: 100,),
                Text('Doliprane')
              ],
            ),
            ),
          ],),
          ),
          SizedBox(height: 15,),
                          ],
                            ),
                          )
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
