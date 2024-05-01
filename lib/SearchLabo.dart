import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchLabo extends StatefulWidget {
  const SearchLabo({super.key});

  @override
  State<SearchLabo> createState() => _SearchLaboState();
}

class _SearchLaboState extends State<SearchLabo> {
    List<String> imagePaths = [
      'lib/Images/a1.png',
    'lib/Images/pharm1.jpeg',
    'lib/Images/a2.jpg',
    'lib/Images/a3.jpg',
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
            leading:  Icon(Icons.arrow_back_outlined,color: Colors.black,),
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
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 45,
                  width: 270,                  decoration: BoxDecoration(
                        color:Colors.black.withOpacity(0.03),
                        borderRadius: BorderRadius.circular(10)
                  ),
                  child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.search),
                              SizedBox(width:8,),
                               Text('find Your Doctor,pharmacie...',style:TextStyle(color: Colors.black38),)

                            ],
                          ),
                 ],
                  ),
                ),SizedBox(width: 5,),
                  TextButton(onPressed:(){}, child:Text('Map View',style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff7BC1B7)),))
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

            Container(
              height: 529,
              child: ListView.builder(
              itemCount:6,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 110,
                  margin: EdgeInsets.only(bottom:15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                        color:  Color.fromRGBO(253, 255, 255, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(1,2)
                    ), BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(-1,-2)
                    )
                  ]

                  ),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Column(
                children: [
                  Container(
                    height: 110,
                    width: 120,
                    padding: EdgeInsets.only(top: 5),
 decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        color:  Color.fromRGBO(253, 255, 255, 1),
                      ),                    child:ClipRRect(
                        borderRadius: BorderRadius.circular(15)
                        ,child: Image.asset(imagePaths[index],fit:BoxFit.cover,)),
                  ),
              ],
              )
                 ,Column(
                  children: [
                     Container(
                      padding: EdgeInsets.only(top: 5,right:15,left: 15,bottom: 5),
                      width: 255
                      ,height: 110,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(15),
                        color:  Color.fromRGBO(253, 255, 255, 1),
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('Pharmacy Charle Benz',style:TextStyle(color: Color(0xff0099E5),),)
                                ],
                              ),
                            Icon(Icons.favorite_border_outlined,color: Color(0xff7BC1B7),)],
                          ),
                          Divider(color: Colors.white,height: 1.5,)                          ,
        Row(
                              children: [
                                Icon(Icons.place_outlined,color:Colors.black54,size: 15,),
                                SizedBox(width: 4,),
                                Text('Monastir Avenue bourguiba',style:TextStyle(color:Colors.black54),),
                             
                              ],
                            ),
                            Row(children: [
                                                              Text('Status: ',style:TextStyle(color:Colors.black54),),

                                                          index%2==0?Text('Open Now',style:TextStyle(color:Colors.green),): Text('Close now',style:TextStyle(color:Colors.red),),                                                          

                            ],),                                                                       
                                              SizedBox(height: 2.5,),
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
                                   ],),
                                                                 SizedBox(height: 2.5,),
                       

                           Row(children: [
                            
                    
                          
                          ],),           
                                                                                  Expanded(child:Container()),
                     
                        ],
                      ),
                      ),
                ],
                 ) ]),
                );
              },
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