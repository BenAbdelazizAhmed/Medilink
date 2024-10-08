import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Pharmaciee extends StatefulWidget {
  const Pharmaciee({super.key});

  @override
  State<Pharmaciee> createState() => _PharmacieeState();
}

class _PharmacieeState extends State<Pharmaciee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor:Colors.white,
          appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {Navigator.pop(context);
        
      },
      icon: Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    title: Text(
      'pharmacy Charlez',
      style: TextStyle(
        color: Color(0xff4491f9),
fontFamily: 'Roboto',
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ),
    ),
  ),
      body:Stack(
        children: [
           Container(
            padding: EdgeInsets.symmetric(horizontal: 10)
            ,height: double.infinity,width: double.infinity,
           child: Column(children: [
            Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            )
            ,height: 180,width: double.infinity,
            child:ClipRRect(
              borderRadius: BorderRadius.circular(15)
              ,child: Image.asset('lib/Images/pha2.png',fit: BoxFit.fill,)),
            ),
           ],),),
          Positioned(
            bottom: 465,left: 20
            ,child:Container(width: 320,height: 60,

          decoration:BoxDecoration(
             color: Colors.white,
           boxShadow: [
            BoxShadow(
              offset: Offset(1,1),spreadRadius:4,blurRadius: 1,color: Colors.black.withOpacity(0.1)
            ),
            
           ],
           
          borderRadius:BorderRadius.circular(10)
          ),
          padding: EdgeInsets.symmetric(horizontal: 10)
          ,child:Column(
            crossAxisAlignment: CrossAxisAlignment.start
            ,children: [
            Text('Pharmacy The Oasis Lagoon Sanur',style:TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,color:Colors.black.withOpacity(0.6)),)
           , Row(children: [
                RatingBar.builder(
                                                   
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 4,
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
                          Text('4.5', style: TextStyle( 
              color:Colors.black),
                    ),
                    SizedBox(width: 30,),
                                              Icon(Icons.directions_outlined),
                   Text('12 km', style: TextStyle(color: Colors.black,),)
            ],),
       
          ],)
          )),
        
      
       Positioned(
  bottom: 340,
  child: Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'About :',
            style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Roboto',
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            'dr. ahmed is a dental specialist the field\n of orthonitics'
            'with extensive training and\n experience in the field of orthonitics',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ],
    ),
  ),
       ),
            Positioned(
              bottom: 5,left: 10,right: 10
              ,child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                     'Localisation:',
                     style: TextStyle(color: Colors.black87, fontFamily: 'Roboto', fontSize: 18,fontWeight: FontWeight.w500),
                   ),
                  Image.asset("lib/Images/maps.png",height: 200,width: 340,fit:BoxFit.fill),
                ],
              )),
          Positioned(
            bottom:240,left: 10
            ,child:Row(children: [
            Container(height: 90,width: 90,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red,
            ),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(10),
              child: Image.asset('lib/Images/pha2.png',fit: BoxFit.fill,))),
              SizedBox(width: 10,),
              Container(height: 90,width: 90,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red,
            ),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(10),
              child: Image.asset('lib/Images/pharm.jpg',fit: BoxFit.fill,))), 
                            SizedBox(width: 10,),

               Container(height: 90,width: 90,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red,
            ),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(10),
              child: Image.asset('lib/Images/pharm.jpg',fit: BoxFit.fill,))),
          ],)),

         Positioned(
          bottom: 20,left: 22
          ,child:   Container(
                                      height: 50,
                                      
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            offset: Offset(1,1),
                                            blurRadius: 4,
                                            spreadRadius: 4,
                                            color: Colors.black.withOpacity(0.1)
                                          )
                                        ],
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 0.1
                                      ),
                                      borderRadius:BorderRadius.circular(20)),
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                                         child:Row(children: [
                                          Container(width: 150,
                                          decoration:BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                            
                                          ),
                                          child:Center(child:Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.directions_outlined),
                                              Text('Direction',style:TextStyle(color:Colors.black,fontWeight: FontWeight.w400),),
                                            ],
                                          ),),
                                          )
                                      ,   Container(width: 140,
                                          decoration:BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color:Color(0xff4491f9)
                                          ),
                                          child:Center(child:Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.phone,color: Colors.white,),
                                              Text('Appeler',style:TextStyle(color:Colors.white,),),
                                            ],
                                          ),
                                          )
                                      )
                                       ],)
                                         
                                       ),
                                     ),
               )
        ],
      ),
    );
  }
}