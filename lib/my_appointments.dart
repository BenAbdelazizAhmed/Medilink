import 'package:flutter/material.dart';

class MyAppointments extends StatefulWidget {
  const MyAppointments({super.key});

  @override
  State<MyAppointments> createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {
      List<String> imagePaths = [
        'lib/Images/dr.png',
   'lib/Images/rpc.png',
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
       backgroundColor:Colors.white,
          appBar: AppBar(
            toolbarHeight: 35,
            leading:  Icon(Icons.arrow_back_outlined,color: Colors.black,),
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: const Text('My Appointments',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
  fontStyle: FontStyle.italic,fontSize: 20,
),),       ),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0),
  child: Container(
    height: double.infinity,
    width: double.infinity,
   
    child: Column(children: [
      SizedBox(height: 20,),
      Container(height: 35,
      width: double.infinity,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Colors.blueAccent.withOpacity(0.04),
      ),
      child: Row(children: [
        Expanded(
          child: Container(
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xff6db0d0),),
          height: 40,
          child:Center(child: Text('Upcoming',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),),
        ),
         Expanded(
           child: Container(width: 120,
                 height: 40,color:Colors.blueAccent.withOpacity(0.03),
                 child:Center(child: Text('Canceled',style:TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.w500),)),),
         ),
      Expanded(
           child: Container(width: 120,
                 height: 40,color:Colors.blueAccent.withOpacity(0.03),
                 child:Center(child: Text('Completed',style:TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.w500),)),),
         ),  ],),
      )
    ,Container(
          height:600,
          width: double.infinity,
          child:Column(
            children: [
            
            SizedBox(height: 15,),
                  
              Container(
                height: 529,
                child: ListView.builder(
                itemCount:3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 160,
                    margin: EdgeInsets.only(top:15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(15),
                          color:  Color.fromRGBO(253, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        spreadRadius: 3,
                        blurRadius: 0,
                        offset: Offset(1,2)
                      ), BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        spreadRadius: 3,
                        blurRadius: 0,
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
                        padding: EdgeInsets.only(top: 5,left: 10,bottom: 5),
                        width: 355,
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
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            borderRadius:BorderRadius.circular(15),
                                            color:Colors.white,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:BorderRadius.circular(15)
                                            ,child: Image.asset(imagePaths[index],height: 90,width: 80,fit:BoxFit.fill,)),
                                        ),
                                        SizedBox(width: 15,),
                                        Container(
                                          
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text('Dr. Ahmed Ben Abdelaziz',style:TextStyle(color: Color(0xff0099E5),fontWeight: FontWeight.bold),),
                                          
                                                  Row(
                                                                        children: [
                                                                          Icon(Icons.place_outlined,color:Colors.black54,size: 15,),
                                                                          SizedBox(width: 4,),
                                                                          Text('Monastir Avenue bourguiba',style:TextStyle(color:Colors.black54,fontWeight: FontWeight.w200),),
                                                                       
                                                                        ],
                                                                      ),
                                                       SizedBox(height: 10,),
                                              Row(children: [
                                                SizedBox(width: 30,),
                                                Column(
                                                  children: [
                                                    Image.asset('lib/Images/agen.png'),
                                                    SizedBox(height: 5,),
                                                    Text('01/05/2024',style:TextStyle(color:Colors.black54),)
                                                  ],
                                                ),
                                                
                                                Divider(
                                                  height: 30,
                                                color: Colors.red,
                                                thickness: 100,),
                                                Column(
                                                  children: [
                                                    Image.asset('lib/Images/jour.png'),
                                                      SizedBox(height: 5,),
                                                    Row(
                                                      children: [
                                                        SizedBox(width: 10,),
                                                        Text('08-15-10:30',style:TextStyle(color:Colors.black54),),
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],)                   
                                            ],
                                          ),
                                        ),
                                        
                                      ],
                                    )
                                  ],
                                ),
                                  
                                                    ]                          ),
                                                SizedBox(height: 10,),
                                                    Divider(height: 4,color: Colors.black.withOpacity(0.09),),
                                                    SizedBox(height: 10,),

                                           Row(
                                                              children: [ 
                                                                Expanded(child:Container()),
                                                                Container(
                                   height: 30,
                              width: 120,
                                decoration: BoxDecoration(
    color:Colors.blueAccent.withOpacity(0.06),
                                                              border: Border.all(
                                                                 color:Colors.blueAccent.withOpacity(0.06),
                                                              ),
                                                                  borderRadius:BorderRadius.circular(10)
                              
                                ),
                                 
                                
                              child:Center(child: Text('Cancel',style:TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.w500),))),
                          SizedBox(width: 15,),
                          Container(
                                   height: 30,
                              width: 120,
                                decoration: BoxDecoration(
                                                              color:Color(0xff6db0d0),
                                                              border: Border.all(
                                                                color: Color(0xff6db0d0)
                                                              ),
                                                                  borderRadius:BorderRadius.circular(10)
                              
                                ),
                                 
                                
                              child:Center(child: Text('Reschedule',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold),))),
                         
                         ],
                                                             ),                            
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
      
    ],),
  ),
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