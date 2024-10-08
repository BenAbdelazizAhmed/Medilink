import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Acceuil.dart';
import 'package:op/ChatMesg.dart';
import 'package:op/ProfileSettings.dart';

class MedelinkMessage extends StatefulWidget {
  const MedelinkMessage({Key? key}) : super(key: key);

  @override
  State<MedelinkMessage> createState() => _MedelinkMessageState();
}class _MedelinkMessageState extends State<MedelinkMessage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Adjusted tab length
  }
int _selectedIndex = 0;
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
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
 
  List<String> imagePaths = [
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
  ];
  List<String> imagePathsClient = [
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
    'lib/Images/sed1.png',
  ];
  final PageController controller = PageController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
            backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios),),
        centerTitle:true,
        title:Text('Messages',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
      ),),
             
      ),
           body:    Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Expanded(
                child: Container(
                   decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(10)
                    ),
                  width: double.infinity,
                  child: Column(
                    children: 
                    [
                            Container(
                height: 80.h,
                width: double.infinity,
                color: Color(0xfff9f9f9),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      imagePathsClient.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.blue,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 26,
                              backgroundImage: AssetImage(imagePathsClient[index]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            
                      Padding(
                        padding: EdgeInsets.only(top: 5, right: 15, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Find your doctor',style:TextStyle(color:Colors.black,     fontFamily: 'Roboto',
                   fontSize: 18)),
                            Icon(Icons.more_horiz, size: 30),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      
                            Container(
                        margin: EdgeInsets.only(left: 15,right: 15,bottom: 10),
                        padding: EdgeInsets.only(left: 15,right: 15,),
                        height: 40.h,
                        
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 8.w),
                            Text('Find Your Doctor...', style: TextStyle(color: Colors.black38)),
                          ],
                        ),
                      ),
                
                      Expanded(
                        child: ListView.builder(
                          itemCount: imagePathsClient.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChatPage()),
                                );
                              },
                              child: Container(
                                height: 65.h,
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: index == 0 ? Color.fromARGB(255, 242, 245, 247): Colors.white,
                                  border: Border.all(
                                  color: index == 0 ? Color(0xff6db0d0): Colors.white,
                
                                  )
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.transparent,
                                      ),
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage(imagePathsClient[index]),
                                          ),
                                          index % 2 == 0
                                              ? Positioned(
                                                  right: 2,
                                                  bottom: 2,
                                                  child: CircleAvatar(
                                                    radius: 7,
                                                    backgroundColor: Colors.green,
                                                  ),
                                                )
                                              : Container(),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Dr. Ahmed Ben Abdelaziz',
                                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),
                                              ),
                                              Expanded(child: Container()),
                                              Text('18:23', style: TextStyle(color: Colors.black45)),
                                            ],
                                          ),
                                          SizedBox(height: 2.h),
                                          Row(
                                            children: [
                                              Text(
                                                'Bonjour John, voici votre prescription',
                                                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54,fontSize: 11.sp),
                                              ),
                                              Expanded(child: Container()),
                                              index == 0
                                                  ? CircleAvatar(
                                                      radius: 10,
                                                      backgroundColor: Colors.red,
                                                      child: Text("3", style: TextStyle(color: Colors.white)),
                                                    )
                                                  : SizedBox(),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
            BottomNavigationBarItem(  icon:Image.asset('lib/Images/diag.png',height: 22,),label:"Diagnostics"),
              BottomNavigationBarItem(icon:Image.asset('lib/Images/chat.png',height: 22,),label:"Chat"),
                BottomNavigationBarItem(
                  icon:Image.asset('lib/Images/user.png',height: 22,),label:"Profile"),
                  
        ],),
  
    );
  }
}
