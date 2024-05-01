import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Acceuil.dart';
import 'package:op/MakeAppoinment.dart';
import 'package:op/MedelinkMessage.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  int _selectedIndex = 0;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar:AppBar(
        elevation: 0,
                backgroundColor: Colors.white
        ,actions: [        
      ],
      title:Text('Profile',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
      centerTitle: true,
      leading:        Icon(Icons.arrow_back_ios),

      ),
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color.fromRGBO(243, 249, 249, 20), Colors.white],
                stops: [0.4, 1.0], 
              ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,children: [
              Container(
                height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                                                  borderRadius: BorderRadius.circular(15)
                    ),
         margin: const EdgeInsets.only(left: 15.0,right: 15,top: 40),

                    child: Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                                        Container(height: 80,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                        child: ClipRRect(child: Image.asset('lib/Images/dr.png')
                                        ,borderRadius: BorderRadius.circular(10),
                                        ),),
                                        SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start
                            ,children: [ Text('Ahmed Ben Abdelaziz',style:TextStyle(fontWeight: FontWeight.bold,color:Color(0xff0B8FAC),),)
                    ,SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('+216 21050601'),
                        SizedBox(width: 40,),
                        Text('Edit',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),)
                      ],
                    )],)
                      ],
                    ),
                  ),
                 
             Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15.0),
         child: Container(height: 160,
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,children: [
          Text('Medicine',style:TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
          Text('Update your info to keep your account',style:TextStyle(color: Colors.black38),),
          SizedBox(height: 10,),
              Container(
                height: 90,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(15)
                ),
                width: double.infinity,
                child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.text_snippet_outlined),
                SizedBox(width: 10,),
                        Text('Medical record',style:TextStyle(color:Color(0xff091F44),fontWeight: FontWeight.bold),),
                        SizedBox(width: 100,),
                           Container(
                                 height: 30,
                            width: 100,
                              decoration: BoxDecoration(
                                                            color:Color(0xff0099E5),
                                                            border: Border.all(
                                                              color: Color(0xff6db0d0)
                                                            ),
                                                                borderRadius:BorderRadius.circular(10)
                            
                              ),
                               
                              
                            child:Center(child: Text('Read',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold),))),
                         
                                        
                      ],
                    ),
                    Text('Check your All Medical history',style:TextStyle(color: Color(0xff091F44)))
        
        
                  ],
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_forward_ios),
        
              ],
            ),             
                ),
          
         ],),),
             ),
             SizedBox(height: 15,),
             Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15.0),
         
         child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Account',style:TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
               Text('Update your info to keep your account',style:TextStyle(color: Colors.black38),),],
         ),),
             ),
             Container(height: 225,
          width: double.infinity,
          
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(15),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween
            ,
                      crossAxisAlignment: CrossAxisAlignment.start
        ,
            children: [           
           
              Row(
              children: [
                Icon(Icons.text_snippet_outlined),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My appointments',style:TextStyle(color:Color(0xff091F44)),),
                                                                            Text('Make changes To Your Account',style:TextStyle(color: Colors.black45))
        
        
                  ],
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_forward_ios),
        
              ],
            ),             
                              Divider(),
        
            Row(
              children: [
                Icon(Icons.notifications_outlined),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Medicine '),
                                                          Text('Make changes To Your Account',style:TextStyle(color: Colors.black45))
        
                  ],
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_forward_ios),
        
              ],
            ),
            Divider(),
              Row(
                
              children: [
                Icon(Icons.privacy_tip),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('privacy & security'),
                                        Text('Make changes To Your Account',style:TextStyle(color: Colors.black45))
        
                  ],
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_forward_ios),
        
              ],
            ),
            Divider(),
        
          
               Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 10,),
                Text('Logout'),
                Expanded(child: Container()),
                Icon(Icons.arrow_forward_ios),
        
              ],
            ),         
              
        ],),
          )
          ,   
               
        ],),
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
     );
  }
}