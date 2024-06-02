import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/pharmaciee.dart';

class SearchPharmaciee extends StatefulWidget {
  const SearchPharmaciee({super.key});

  @override
  State<SearchPharmaciee> createState() => _SearchPharmacieeState();
}

class _SearchPharmacieeState extends State<SearchPharmaciee> {
    List<String> imagePaths = [
  'lib/Images/pha1.png',
    'lib/Images/pha2.png',
    'lib/Images/pharm.jpg',
     'lib/Images/phar.jpg',
  'lib/Images/pha1.png',
    'lib/Images/pha2.png',
  'lib/Images/sed2.png',
    'lib/Images/pha1.png',
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
            title: const Text('all pharmacies',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
  fontStyle: FontStyle.italic,fontSize: 20,
),),       ),
  
      body:Container(
        padding: EdgeInsets.only(top:10,left: 18,right: 18),
        height:double.infinity,
        width: double.infinity,
        child:Column(
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
                 Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('121 Pharmacy',style:TextStyle(fontWeight:FontWeight.bold),),
                    
                      ],
                    ),
                      SizedBox(height: 5,),

      Expanded(
          child: Container(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap:(){
                    
                        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Pharmaciee()),
      );
                  },
                  child: Container(
                    height: 90.h, // Utilisation de ScreenUtil pour la hauteur
                    margin: EdgeInsets.only(bottom: 15.h), // Utilisation de ScreenUtil pour la marge
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r), // Utilisation de ScreenUtil pour le rayon de bordure
                      color: Color.fromRGBO(253, 255, 255, 1),
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
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 90.h, // Utilisation de ScreenUtil pour la hauteur
                              width: 100.w, // Utilisation de ScreenUtil pour la largeur
                              padding: EdgeInsets.only(top: 5.h), // Utilisation de ScreenUtil pour le padding
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r), // Utilisation de ScreenUtil pour le rayon de bordure
                                color: Color.fromRGBO(253, 255, 255, 1),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.r), // Utilisation de ScreenUtil pour le rayon de bordure
                                child: Image.asset(imagePaths[index], fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  top: 5.h, right: 5.w, left: 15.w, bottom: 5.h), // Utilisation de ScreenUtil pour le padding
                              width: 200.w, // Utilisation de ScreenUtil pour la largeur
                              height: 90.h, // Utilisation de ScreenUtil pour la hauteur
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r), // Utilisation de ScreenUtil pour le rayon de bordure
                                color: Color.fromRGBO(253, 255, 255, 1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pharmacy Charle Benz',
                                        style: TextStyle(
                                            color: Color(0xff0099E5),
                                            fontSize: 12.sp), // Utilisation de ScreenUtil pour la taille de police
                                      ),
                                      Icon(Icons.favorite_border_outlined,
                                          color: Color(0xff7BC1B7)),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    height: 1.5.h, // Utilisation de ScreenUtil pour la hauteur
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.place_outlined,
                                        color: Colors.black54,
                                        size: 15.sp, // Utilisation de ScreenUtil pour la taille de l'icône
                                      ),
                                      SizedBox(width: 4.w), // Utilisation de ScreenUtil pour la largeur
                                      Text(
                                        'Monastir Avenue bourguiba',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 11.sp), // Utilisation de ScreenUtil pour la taille de police
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Status: ',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10.sp), // Utilisation de ScreenUtil pour la taille de police
                                      ),
                                      index % 2 == 0
                                          ? Text(
                                              'Open Now',
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 10.sp), // Utilisation de ScreenUtil pour la taille de police
                                            )
                                          : Text(
                                              'Close now',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 10.sp), // Utilisation de ScreenUtil pour la taille de police
                                            ),
                                    ],
                                  ),
                                  SizedBox(height: 2.5.h), // Utilisation de ScreenUtil pour la hauteur
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 1,
                                        itemSize: 20.sp, // Utilisation de ScreenUtil pour la taille des étoiles
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 4.0.w), // Utilisation de ScreenUtil pour le padding
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Color(0xffffa04b),
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      SizedBox(width: 5.w), // Utilisation de ScreenUtil pour la largeur
                                      Text(
                                        '5.0',
                                        style: TextStyle(
                                            color: Color(0xff5d6062),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.sp), // Utilisation de ScreenUtil pour la taille de police
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2.5.h), // Utilisation de ScreenUtil pour la hauteur
                                  Row(
                                    children: [],
                                  ),
                                  Expanded(child: Container()),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
          ],
        )
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