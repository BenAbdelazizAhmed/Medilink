import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      body:ListView(
        children: [
          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                      height: 45,
                                      
                                      decoration: BoxDecoration(
                                        color: Color(0xffE5E7EB).withOpacity(0.3),
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 0.1
                                      ),
                                      borderRadius:BorderRadius.circular(20)),
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                         child: TextField(
                                          decoration: InputDecoration(
                                            border:InputBorder.none,
                                            suffixIcon:Icon(Icons.send,color: Color(0xffA1A8B0).withOpacity(0.5),),
                                            label:Text("Ask your questions",style:TextStyle(color: Color(0xffA1A8B0),fontFamily: 'Manrope',fontWeight: FontWeight.bold))
                                          ),   
                                         ),
                                       ),
                                     ),
          Container(
            height: 740,width: double.infinity,
            child: ListView.builder(itemBuilder:(context,id){
             
              return Container(
                color: Colors.white,
                padding:EdgeInsets.symmetric(horizontal: 20),
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start
                  ,children: [
                   CircleAvatar(radius: 20,backgroundImage:AssetImage(imagePaths[id]),),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ahmed Abdelaziz',style:TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Poppins',color: Color(0xff48555B)),),
                      Text('5 minutes ago',style:TextStyle(fontSize: 13.sp,color: Colors.black.withOpacity(0.3)),)

                    ],
                  ),
                  Expanded(child:Container()),
                  Container(
                        height: 30,width: 70,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Colors.white,
                        border: Border.all(color: Colors.blue),
                        borderRadius:BorderRadius.circular(10)
                        ),
                        child:Row(
                          children: [
                            RatingBar.builder(
                                                       
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.vertical,
                                      allowHalfRating: true,
                                      itemCount: 1,
                                      itemSize:  15,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Color(0xffffa04b),
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                     ),
                            Text('4.8',style:TextStyle(color: Colors.blue),)
                          ],
                        )
                        ),   
                 ],),
                 SizedBox(height: 5,),
                 Text("what's is good health ?",style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff48555B).withOpacity(0.8)),),
                 Text('Health is a state of physical, mental and social well-being, not just the absence of disease or infirmity.',style:TextStyle(fontSize: 12.sp),)
            ,         Row(children: [
                Icon(Icons.favorite,color: Colors.red,),
                SizedBox(width: 10,),
                Text('10 Likes',style:TextStyle(fontSize: 12.sp),)
            ,SizedBox(width: 20,),
               ],),
                SizedBox(height: 20,),
                ],),
              );
            }),
          ),
        ],
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