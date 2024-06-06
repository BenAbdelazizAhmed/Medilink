import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
    List<String> imagePaths = [
  'lib/Images/Doc1.jpg',
    'lib/Images/sed3.png',
      'lib/Images/Doc2.jpg',
        'lib/Images/Doc4.jpg',
  'lib/Images/Doc4.jpg',
  'lib/Images/sed2.png',
   'lib/Images/sed3.png',
  'lib/Images/sed2.png',
    'lib/Images/sed2.png',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                 appBar: AppBar(
                toolbarHeight: 35,
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){
                        Navigator.pop(context);

          },icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('My Doctors',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
      body:ListView.builder(itemBuilder:(context,id){
        return Container(
          color: Colors.white,
          padding:EdgeInsets.symmetric(horizontal: 20),
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.start
            ,children: [
             CircleAvatar(radius: 15,backgroundImage:AssetImage(imagePaths[id]),),
            SizedBox(width: 10,),
            Text('Ahmed Abdelaziz',style:TextStyle(fontWeight: FontWeight.bold),),
            Expanded(child:Container()),
            Container(
                  height: 25,width: 50,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.green,
                  borderRadius:BorderRadius.circular(10)
                  ),
                  child:Center(child: Text('8 new',style:TextStyle(color:Colors.white)),)
                  ),   
           ],),
           SizedBox(height: 5,),
           Text("what's is good health ?",style:TextStyle(fontWeight: FontWeight.bold),),
           Text('Health is a state of physical, mental and social well-being, not just the absence of disease or infirmity.',style:TextStyle(fontSize: 12.sp),)
,         Row(children: [
          Icon(Icons.favorite,color: Colors.red,),
          SizedBox(width: 10,),
          Text('10',style:TextStyle(fontSize: 12.sp),)
,SizedBox(width: 20,),
                    Text('5 minutes ago',style:TextStyle(fontSize: 12.sp),)
         ],),
          SizedBox(height: 10,),
          ],),
        );
      }),
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