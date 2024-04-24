import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
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
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start
        ,children: [
      
        Container(height: 190,width: double.infinity,
        decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.all(15),
            child:Center(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('My Profile',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 5,),
                        Text('Update your info to keep your account',style:TextStyle(color: Colors.black38),),
SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                                                color:Color.fromRGBO(243, 249, 249, 1),
                                                borderRadius: BorderRadius.circular(15)
                  ),
                            padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                                      CircleAvatar(radius: 30,
                                      backgroundImage: AssetImage('lib/sed1.png'),
                                      ),
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
               
              ],
            ),),
            ),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 15.0),
       child: Container(height: 120,
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start
        ,children: [
        Text('Medicine',style:TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
        Text('Update your info to keep your account',style:TextStyle(color: Colors.black38),),
        SizedBox(height: 10,),
            Container(
              height: 60,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                          color:Color.fromRGBO(243, 249, 249, 1),
                          borderRadius: BorderRadius.circular(15)
              ),
              width: double.infinity,
              child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.text_snippet_outlined),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Test results'),
                                                                          Text('Make changes To Your Account',style:TextStyle(color: Colors.black45))


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
          color: Color.fromRGBO(243, 249, 249, 1),
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
                  Text('Test results'),
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
                  Text('notofications'),
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
     bottomNavigationBar:BottomNavigationBar(
          backgroundColor:Colors.white,
          elevation: 4,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xff4789FC),
          unselectedItemColor:Color(0xffB9BCBE) ,
          unselectedLabelStyle: TextStyle( color: Color(0xffB9BCBE),),
          selectedLabelStyle:TextStyle( color:  Color(0xff4789FC),
          
          )
          ,items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home",),
            BottomNavigationBarItem(icon:Icon(Icons.medical_services),label:"Diagnostics"),
              BottomNavigationBarItem(icon:Icon(Icons.messenger),label:"Chat"),
                BottomNavigationBarItem(icon:Icon(Icons.person),label:"Profile")
        ],),
       );
  }
}