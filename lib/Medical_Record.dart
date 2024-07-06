import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Medical_RecordsPage1.dart';

class medical_record extends StatefulWidget {
  const medical_record({super.key});

  @override
  State<medical_record> createState() => _medical_recordState();
}

class _medical_recordState extends State<medical_record> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    title: Text(
      'Medical Records',
      style: TextStyle(
        color: Color(0xff4491f9),
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ),
    ),
  ),
          body: Container(
          height: double.infinity,
          width: double.infinity,
        color: Colors.white,    
            child:ListView.builder(itemBuilder:(context,id){
              if(id==0) {
                return Container(
                  height: 360,
                  width: double.infinity,
                  child: Column(
                    children: [
                      
                      Container(
                               margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                                width: double.infinity,
                                height: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white,
 boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],                                ),
                                padding: EdgeInsets.only(top: 15,left: 10,right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                            Container(height: 35,width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child:CircleAvatar(radius: 1,
                            backgroundColor: Colors.white,
                            child: Center(child: Icon(Icons.check,color: Colors.blue,),),
                            ),
                            ),
                            SizedBox(width: 15,),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start
                              ,children: [
                               Row(
                                 children: [
                                   Text("You're getting filter",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                               SizedBox(width: 10,),
                               
                               Container(
                  height: 30,width: 70,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.blue,
                  borderRadius:BorderRadius.circular(10)
                  ),
                  child:Center(child: Text('Weekly',style:TextStyle(color:Colors.white)),)
                  ),    

                                 ],
                               ),
                              Text("keep it up and stay even more",style:TextStyle(color: Colors.black.withOpacity(0.5))),
                             ],),
                           ],
                         ),
                     
                       ],
                                   ),
                                   SizedBox(height: 10,),
                
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.0),
                          
                        ),
                        child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.spaceAround,
                            maxY: 5, // Définir la valeur Y maximale à 5 pour éliminer les valeurs au-dessus de la courbe
                            barTouchData: BarTouchData(enabled: false),
                            titlesData: FlTitlesData(
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 1,
                                  reservedSize: 40,
                                  getTitlesWidget: (value, meta) {
                      return Text(
                        value.toString(),
                        style: TextStyle(
                          color: Color(0xff67727d),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      );
                                  },
                                ),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 20,
                                  getTitlesWidget: (value, meta) {
                      switch (value.toInt()) {
                        case 0:
                          return Text('M', style: TextStyle( ));
                        case 1:
                          return Text('T', style: TextStyle( ));
                        case 2:
                          return Text('W', style: TextStyle(  ));
                        case 3:
                          return Text('T', style: TextStyle(   ));
                        case 4:
                          return Text('F', style: TextStyle(    ));
                        case 5:
                          return Text('S', style: TextStyle(     ));
                        case 6:
                          return Text('S', style: TextStyle(      ));
                        default:
                          return Text('');
                      }
                                  },
                                ),
                              ),
                            ),
                            borderData: FlBorderData(
                              show: false,
                              border: Border.all(
                                color: Color(0xffd8d9e3),
                                width: 2,
                              ),
                            ),
                            barGroups: [
                              BarChartGroupData(
                                x: 0,
                                barRods: [
                                  BarChartRodData(
                      toY: 5, // Valeur modifiée pour être en dessous de la courbe
                      color: Color(0xff4285f4),
                      width:7.5,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 1,
                                barRods: [
                                  BarChartRodData(
                      toY:4.9 , // Valeur modifiée pour être en dessous de la courbe
                      color: Color(0xff4285f4),
                      width: 7.5,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 2,
                                barRods: [
                                  BarChartRodData(
                      toY: 4, // Valeur modifiée pour être en dessous de la courbe
                      color: Color(0xff4285f4),
                      width:7.5,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 3,
                                barRods: [
                                  BarChartRodData(
                      toY: 2, // Valeur modifiée pour être en dessous de la courbe
                      color: Color(0xff4285f4),
                      width:7.5,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 4,
                                barRods: [
                                  BarChartRodData(
                      toY: 5, // Valeur modifiée pour être en dessous de la courbe
                      color: Color(0xff4285f4),
                      width: 7.5,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 5,
                                barRods: [
                                  BarChartRodData(
                      toY: 2, // Valeur modifiée pour être en dessous de la courbe
                      color: Color(0xff4285f4),
                      width: 7.5,
                                  ),
                                ],
                              ),
                              BarChartGroupData(
                                x: 6,
                                barRods: [
                                  BarChartRodData(
                      toY: 4, // Valeur modifiée pour être en dessous de la courbe
                      color: Color(0xff4285f4),
                      width:7.5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                      ,
                      SizedBox(height: 10,)
                      ,    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child:Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration:BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.1)),
              borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.red.withOpacity(0.1)
                ,child: Icon(Icons.heart_broken,color: Colors.red,)),
              Column(
                children: [
                  Text('Blood',style:TextStyle(fontWeight: FontWeight.bold),),
                            Text('105 bmnp',style:TextStyle(fontWeight: FontWeight.bold))

                ],
              ),
            ],
          ),
        ],
      ),
    ),
        Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration:BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.1)),
              borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green.withOpacity(0.1)
                ,child: Icon(Icons.heart_broken,color: Colors.green,)),
              Column(
                children: [
                  Text('Sugar',style:TextStyle(fontWeight: FontWeight.bold)),
                            Text('105 bmnp',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)

                ],
              ),
            ],
          ),
        ],
      ),
    ),
 
  ],
),
                      )
                      ])
                            ),
                        
                    ],
                  ),
                );
         } else return Container(
              
                padding:EdgeInsets.only(top:10.h,left: 20.w,right:5.w),
                margin:EdgeInsets.only(top: 20.h,left: 20.w,right: 20.w),
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow:[
                                BoxShadow(
                                  offset: Offset(1,1),
                                  blurRadius: 4,
                                  spreadRadius: 1,
                                  color: Colors.black.withOpacity(0.05)
                                )
                              ]
                ),
                height: 90.h,width: double.infinity,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start
                  ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Column(
                    children: [
                      Container(height: 40.h,width: 60.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),color:Colors.blue.withOpacity(0.2).withOpacity(0.9),
                      ),
                      child:Column(children: [
                        Text('27',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white),),
                        Text('April',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white),)
                      ],)
                      ),
                      SizedBox(height: 10.h,),
                      Container(height: 20.h,width: 60.w, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),color:Colors.blue.withOpacity(0.1).withOpacity(0.1),
                      ),child:Column(children: [
                        Text('New',style:TextStyle(fontWeight: FontWeight.bold,color:Colors.blueAccent),)
                      ],),),
                    ],
                  )
              ,  SizedBox(width: 20.w,)
            ,  Column(
              crossAxisAlignment: CrossAxisAlignment.start
              ,children: [
              GestureDetector(
                onTap:(){
                  
                   Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Medical_RecordsPage1()),
        );
                }
                ,child: Text('Records added by you',style:TextStyle(fontWeight: FontWeight.bold,),)),
            Text('Record for Abdullah mamun',style:TextStyle(color: Colors.green,fontSize: 10.sp),),
            SizedBox(height: 4.h,),
           Text('1 Prescription',style:TextStyle(color: Color(0xff677294)),),
              ],)
             ,Expanded(child: Container()) ,  IconButton(icon: Icon(Icons.more_vert),onPressed: (){},)
                ],
                ),
                );
            }),
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
              BottomNavigationBarItem(  icon:Image.asset('lib/Images/diag.png',height: 22.h,),label:"Diagnostics"),
                BottomNavigationBarItem(icon:Image.asset('lib/Images/chat.png',height: 22.h,),label:"Chat"),
                  BottomNavigationBarItem(
                    icon:Image.asset('lib/Images/user.png',height: 22.h,),label:"Profile"),
                    
          ],),
         
      ),
    );
  }
}