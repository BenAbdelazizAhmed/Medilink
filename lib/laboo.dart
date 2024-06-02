import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class laboos extends StatefulWidget {
  const laboos({super.key});

  @override
  State<laboos> createState() => _laboosState();
}

class _laboosState extends State<laboos> {
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
            title: const Text('laboratoire Charle Benz',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
  fontStyle: FontStyle.italic,fontSize: 20,
),),       ),
  
      body:Container(
         decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xffC5FFD9).withOpacity(0.6),], 
            ),),
        child: Column(children: [
        Container(
          padding: EdgeInsets.all(15),
          
                    height: 140.h, // Utilisation de ScreenUtil pour la hauteur
                    margin: EdgeInsets.all(15), // Utilisation de ScreenUtil pour la marge
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
                            child: Image.asset('lib/Images/a1.png', fit: BoxFit.cover),
                          ),
                        ),
                             Container(
                              padding: EdgeInsets.only(
                                  top: 5.h, right: 5.w, left: 15.w, bottom: 5.h), // Utilisation de ScreenUtil pour le padding
                              width: 200.w, // Utilisation de ScreenUtil pour la largeur
                              height: 140.h, // Utilisation de ScreenUtil pour la hauteur
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
                                        'laboratoire Charle Benz',
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
                                      
                                           Text(
                                              'Close now',
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 10.sp), // Utilisation de ScreenUtil pour la taille de police
                                            ),
                                    ],
                                  ),
                                  SizedBox(height: 2.5.h), // Utilisation de ScreenUtil pour la hauteur
                                  SizedBox(
                                    height: 30,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor:Colors.blue
                                      )
                                      ,onPressed:(){}, child:Text('Contact',style:TextStyle(color:Colors.white),)),
                                  ),
                              
                                ],
                              ),
                            ),
                      
                      ],
                    ),
                  ),
                  Container(
                    height: 300.h,
                    width: double.infinity,
                    child:Image.asset('lib/Images/Groupmap.png',fit:BoxFit.cover,),
                    )
        ],),
      ),
    );
  
  }
}