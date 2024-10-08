import 'dart:convert';

import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:op/Acceuil.dart';
import 'package:op/MedelinkMessage.dart';
import 'package:op/ProfileSettings.dart';

class makeappoinment extends StatefulWidget {
  const makeappoinment({super.key});

  @override
  State<makeappoinment> createState() => _makeappoinmentState();
}

class _makeappoinmentState extends State<makeappoinment> {
    String selectedTime = '';
final TextEditingController patientIdController = TextEditingController();
  final TextEditingController doctorIdController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController complaintController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  Future<void> makeAppointment() async {
    String apiUrl = 'http://10.0.2.2:3005/api/appointment/make-appointment';
    print('ffffff');
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    print(selectedDate);
    print(selectedTime);
        String formattedDate = selectedDate.toIso8601String();

    Map<String, dynamic> requestBody = {
      

  "IdPatient": "60d5ec49f6d92a2b6c8b4567",
  "IdMedecin": "60d5ec49f6d92a2b6c8b4568",
  "Date": "2024-07-20T14:00:00.000Z",
  "Time": "14:00",
  "Complaint": "Description du problème de santé"

    };
print('ttt');
    try {
      var response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: jsonEncode(requestBody),
      );
      print(jsonDecode(response.body));
      if (response.statusCode == 200) {
        // Rendez-vous créé avec succès
        print('Rendez-vous créé avec succès');
        // Afficher une confirmation ou effectuer une autre action
      } else {
        // Gérer d'autres codes de statut si nécessaire
        print(response.statusCode);
        print('Code de statut: ${jsonDecode(response.body)}');
      }
    } catch (e) {
      // Gérer les erreurs de requête
      print('Erreur lors de la création du rendez-vous: $e');
    }
  }
  
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
    leading: IconButton(
      onPressed: () {
        makeAppointment();
      },
      icon: Icon(Icons.arrow_back_ios),
    ),
    centerTitle: true,
    title: Text(
      'Book Appoinment',
      style: TextStyle(
        color: Color(0xff4491f9),
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ),
    ),
  ),  body:Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
            
              child: Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15,bottom: 20),
                child: ListView(
                  children: [
                    SizedBox(height: 5,),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start
                        ,children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 15.0),
                         child: CircleAvatar(
                          radius: 35
                          ,backgroundImage: AssetImage('lib/Images/sed1.png'),),
                       ),
                       SizedBox(width: 15,),
                       Padding(
                         padding: const EdgeInsets.only(top: 5.0),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start
                          ,children: [
                          Text('Dr.Ahmed ABdelaziz',style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff4491f9),     fontFamily: 'Roboto',
                                   fontSize: 15,),),
                           Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                             
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

                         
                                  ],),
                       ),
                      ]),
                                
                    ],
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
                         
                                       color:Colors.black.withOpacity(0.02),
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('Patients',style:TextStyle(color: Colors.black54,  fontSize: 14,
                                                        fontFamily: 'Poppins',),),
                              Expanded(child: Container()),
                              Row(children: [
                                Icon(Icons.person,color:Color(0xff4491f9)),
                               SizedBox(width: 5,),
                                Text('1000+',style:TextStyle(fontWeight: FontWeight.bold))
                              ],)
                            ],),
                            ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 65,width: 110
                            ,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                                                border: Border.all(color: Colors.black, width: 0.05),
                         
                                       color:Colors.black.withOpacity(0.02),
                            ),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('Experiences',style:TextStyle(color: Colors.black54,  fontSize: 14,
                                                        fontFamily: 'Poppins',),),
                              Expanded(child: Container()),
                              Row(children: [
                                Icon(Icons.work,color:Color(0xff4491f9)),
                               SizedBox(width: 5,),
                                Text('5 YEARS',style:TextStyle(fontWeight: FontWeight.bold,  fontSize: 14,
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
                                Text('5.0',style:TextStyle(fontWeight: FontWeight.bold,))
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
                         child: Text('dr. ahmed is a dental specialist the field of orthonitics with extensive training and experience in the field',style:TextStyle( 
                                                    fontSize: 14,
                                                        fontFamily: 'Poppins',
                                                    color: Colors.black54,
                                                  ),),
                       ),
                         
                          Expanded(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 119,
              child: EasyDateTimeLine(
                initialDate: DateTime.now(),
                onDateChange: (date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
                activeColor: Color(0xff4491f9),
                dayProps: const EasyDayProps(
                  height: 55,
                  borderColor: Color(0xff4491f9),
                  todayHighlightStyle: TodayHighlightStyle.withBackground,
                  todayHighlightColor: Colors.red,
                  todayMonthStrStyle: TextStyle(color: Colors.white),
                  todayNumStyle: TextStyle(color: Colors.white),
                  todayStrStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  activeDayNumStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  activeMothStrStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  activeDayStrStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  inactiveDayNumStyle: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Schedule',
              style: TextStyle(
                color: Color(0xff0A0B0C),
                fontFamily: 'Roboto',
                fontSize: 17,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 30,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedTime = '08:00 PM';
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: selectedTime == '08:00 PM' ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xff4491f9),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '08:00 PM',
                          style: TextStyle(color: selectedTime == '08:00 PM' ? Colors.white : Color(0xff4491f9), fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedTime = '10:00 PM';
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 110,
                      decoration: BoxDecoration(
                        color: selectedTime == '10:00 PM' ? Colors.blue : Colors.white,
                        border: Border.all(
                          color: Color(0xff4491f9),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          '10:00 PM',
                          style: TextStyle(color: selectedTime == '10:00 PM' ? Colors.white : Color(0xff4491f9), fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedTime = '12:00 PM';
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: selectedTime == '12:00 PM' ? Colors.blue : Colors.white,
                        border: Border.all(
                          color: Color(0xff4491f9),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          '12:00 PM',
                          style: TextStyle(color: selectedTime == '12:00 PM' ? Colors.white : Color(0xff4491f9), fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedTime = '04:00 PM';
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: selectedTime == '04:00 PM' ? Colors.blue : Colors.white,
                        border: Border.all(
                          color: Color(0xff4491f9),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          '04:00 PM',
                          style: TextStyle(color: selectedTime == '04:00 PM' ? Colors.white : Color(0xff4491f9), fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Complaint',
              style: TextStyle(
                color: Color(0xff0A0B0C),
                fontFamily: 'Roboto',
                fontSize: 17,
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black.withOpacity(0.2),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: complaintController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                  hintText: 'Votre texte ici',
                ),
              ),
            ),
          ],
        ),
      ),
    ),
        Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: SizedBox(
                          height: 45,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Color(0xff4491f9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), 
                            ),
                          ),
                          onPressed: () {
                                 makeAppointment();
                                           showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        
        padding: EdgeInsets.only(top: 40),
        height: 320.0, 
        color: Colors.white,
        child: Column(
          children: [
         CircleAvatar(
          radius: 47
          ,backgroundColor: Colors.blueAccent.withOpacity(0.11),
          child: Icon(Icons.check,size: 50,color: Colors.blueAccent,),
          ),
         SizedBox(height: 15,),
         Text('Success',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
                  SizedBox(height: 15,),
         Text('You have successfully make appoi .',style:TextStyle(color: Color(0xffA1A8B0),fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                    SizedBox(height: 15,),
             Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: SizedBox(
                             height: 45,
                          child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Color(0xff4491f9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20), 
                            ),
                          ),
                          onPressed: () {
                            
                          },
                          child: Center(
                            child: Text('Cancel',style:TextStyle(fontFamily:'Poppins',fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                          ),
                        ),
                  ),

          ],
        ),
      ),
    );
  },
);

                          },
                          child: Center(
                            child: Text('Book Appoinment (50.99D)',style:TextStyle(fontFamily:'Poppins',fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                          ),
                        ),
                  ),
SizedBox(height: 15,),
        ],
      ),
      
      ),
      
            ))])));
  }
}