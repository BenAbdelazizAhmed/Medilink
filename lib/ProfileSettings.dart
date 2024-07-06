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
        toolbarHeight: 40,
                backgroundColor: Colors.white
        ,actions: [        
      ],
      title:Text('Profile',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
      centerTitle: true,
      leading: IconButton(
              onPressed: () {
  Navigator.pop(context);
}
              ,icon:Icon(Icons.arrow_back_outlined,color: Colors.black,)),

      ),
      body:Container(
        
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(top: 10,left:10,right: 10),
          decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xffC5FFD9).withOpacity(0.8)], // Couleur blanche en bas, couleur bleue en haut
            ),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(1,1),
                spreadRadius: 1,
                blurRadius: 4
              )
            ],
             
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start
            ,children: [
            Stack(
              children: [
               Column(
                children: [
                   Container(height: 140,width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ,child: Image.asset('lib/Images/pha1.png',fit:BoxFit.fill,)),
                ),
                 Container(height: 100,width: double.infinity,
                decoration: BoxDecoration(
                ),
                 )
                ,
                ],
               ),
         Positioned(
          bottom:0,left: 70
          ,child: Column(
            children: [
        CircleAvatar(
          radius: 55,
          backgroundColor: Colors.white,
          child: CircleAvatar(radius: 50,backgroundColor: Colors.amber,
          backgroundImage:AssetImage('lib/Images/l1.jpeg'),
          ),
        ),
        Text("Ahmed Abdeaziz",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ],
          )),
              ],
            ),  
            SizedBox(height: 20,),
               Expanded(
                 child: Container(
                  decoration: BoxDecoration(
                                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20))
               
                  ),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,children: [
                         SizedBox(
                      height: 50,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal:15),
                       decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                       ),
                        child: Center(
                          child: ListTile(
                            
                            leading: Icon(Icons.person,color:Colors.blue,),
                            title: Text('Doctors',style:TextStyle(color:Color(0xFF17203A),fontSize: 15.sp,fontFamily: 'Roboto',fontWeight: FontWeight.w500)),
                             trailing:Text('+12',style:TextStyle(fontWeight:FontWeight.bold,color:Color(0xFF17203A)),),
                            onTap: () {
                              
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: Container(
                        
                                                margin: EdgeInsets.symmetric(horizontal:15),
                        decoration: BoxDecoration(
                                                  color: Colors.white,
                        ),
                        child: ListTile(
                          leading: Icon(Icons.medical_information,color:Colors.blue,),
                                           
                          title: Text('Medical Records',style:TextStyle(color:Color(0xFF17203A),fontSize: 15.sp,fontWeight: FontWeight.w500)),
                          onTap: () {
                                            
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: ListTile(
                        leading: Icon(Icons.local_pharmacy,color: Colors.blue,),
                        title: Text('Pharmacy',style:TextStyle(color:Color(0xFF17203A),fontSize: 15.sp,fontWeight: FontWeight.w500)),
                                       trailing:Container(
                          height: 25,width: 50,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(color: Colors.green,
                          borderRadius:BorderRadius.circular(10)
                          ),
                          child:Center(child: Text('8 new',style:TextStyle(color:Color(0xFF17203A))),)
                          ),    
                 
                        onTap: () {
                        
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: ListTile(
                        leading: Icon(Icons.medical_information_outlined,color:Colors.blue,),
                                                         
                        title: Text('Medicine',style:TextStyle(color:Color(0xFF17203A),fontSize: 15.sp,fontWeight: FontWeight.w500)),
                        onTap: () {
                        
                        },
                      ),
                    ),
                       SizedBox(
                      height: 40,
                      child: ListTile(
                        leading: Icon(Icons.local_pharmacy,color: Colors.blue,),
                        title: Text('Pharmacy',style:TextStyle(color:Color(0xFF17203A),fontSize: 15.sp,fontWeight: FontWeight.w500)),
                                       trailing:Container(
                          height: 25,width: 50,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(color: Colors.green,
                          borderRadius:BorderRadius.circular(10)
                          ),
                          child:Center(child: Text('8 new',style:TextStyle(color:Color(0xFF17203A))),)
                          ),    
                 
                        onTap: () {
                        
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: ListTile(
                        leading: Icon(Icons.medical_information_outlined,color:Colors.blue,),
                                                         
                        title: Text('Medicine',style:TextStyle(color:Color(0xFF17203A),fontSize: 15.sp,fontWeight: FontWeight.w500)),
                        onTap: () {
                        
                        },
                      ),
                    ),
                  
                    SizedBox(
                      height: 40,
                      child: ListTile(
                        leading: Icon(Icons.login_outlined,color:Colors.red,),
                        trailing: Icon(Icons.login_outlined),                          
                        title: Text('Log out',style:TextStyle(color:Colors.red,fontSize: 15.sp,fontWeight: FontWeight.w500)),
                        onTap: () {
                      
                        },
                      ),
                    ),
                    
                 ],),),
               ),
             
                 
          ],),
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
     );
  }
}