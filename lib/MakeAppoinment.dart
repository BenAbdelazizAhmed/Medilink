import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class makeappoinment extends StatefulWidget {
  const makeappoinment({super.key});

  @override
  State<makeappoinment> createState() => _makeappoinmentState();
}

class _makeappoinmentState extends State<makeappoinment> {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 252, 254),
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 251, 252, 254),
          elevation: 0,
          leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('Appoinment',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,children: [
            SizedBox(height: 5,),
          Container(
            padding:EdgeInsets.all(10)
            ,height: 120,width: double.infinity,decoration:BoxDecoration(borderRadius: BorderRadius.circular(20)
            ,color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 5,blurRadius: 8,
                color: Colors.black.withOpacity(0.05),
                offset:Offset(1,1),
              ),
            ]
            ),
          child:Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start
                ,children: [
                Container(width: 110,height: 100,
                decoration:BoxDecoration( color:Color.fromRGBO(243, 249, 249, 1),borderRadius: BorderRadius.circular(15)),
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(15)
                ,child:  Image.asset('lib/Images/sed1.png',fit:BoxFit.contain,),
                )
               ),
               SizedBox(width: 15,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start
                ,children: [
                Text('Dr.James Gun',style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff02aeed) ),),
                Text('Dermalogiste',style:TextStyle(color: Colors.black54)),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment :',style:TextStyle(color: Colors.black54 )),
                    SizedBox(width: 60,),
                    Text('120 Dinar',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent ))
                  ],
                ),  Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Location :',style:TextStyle(color: Colors.black54 )),
                    SizedBox(width: 60,),
                    Text('Monastir',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent ))
                  ],
                )
              ,SizedBox(height: 10,),
              Row(children: [
              
               
              ],),
                        ],),
              ]),

            ],
          ),
          ),
              
              Padding(
                padding: const EdgeInsets.only(top:5.0,bottom: 5),
                child: Text('Details :',style:TextStyle(color: Color(0xff0A0B0C),     fontFamily: 'Roboto',
   fontStyle: FontStyle.italic,fontSize: 18),),
              )
               ,  Padding(
                 padding: const EdgeInsets.symmetric(horizontal:5.0),
                 child: Text('dr. ahmed is a dental specialist with extensive training and experience in the field of orthonitics',style:TextStyle( 
                                            fontSize: 14,
                                                fontFamily: 'Poppins',
                                            color: Colors.black54,
                                          ),),
               ),
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
    // Gérer le changement de date sélectionnée
  },
  activeColor: Color(0xff02aeed),
  
  dayProps: const EasyDayProps(
    height: 60,
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
  fontStyle: FontStyle.italic,fontSize: 17,),),
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
                     color:Color(0xff6db0d0),
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
   fontStyle: FontStyle.italic,fontSize: 17,),),
          SizedBox(height: 5,),
          Container(
            width:double.infinity,
            height: 80,
            decoration:BoxDecoration(
                            color: Colors.white,

        border: Border.all(
                        color:Colors.black.withOpacity(0.2)
                      ),
                      borderRadius: BorderRadius.circular(10)
             
                    ),
                      ),
             
          Container(
            margin:EdgeInsets.symmetric(vertical:20)
            ,height: 50,
            decoration:BoxDecoration(
                        color: Color(0xff6db0d0),
                        borderRadius: BorderRadius.circular(10)
            ),
          width: double.infinity,
          child:Center(child:Text('Make appointment',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
          )
                      ],),
                     ))
        ]),
      ),
      ),
      
    );
  }
}