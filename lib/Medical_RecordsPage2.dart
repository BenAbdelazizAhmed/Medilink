import 'package:flutter/material.dart';

class Medical_RecordsPage1 extends StatefulWidget {
  const Medical_RecordsPage1({super.key});

  @override
  State<Medical_RecordsPage1> createState() => _Medical_RecordsPage1State();
}

class _Medical_RecordsPage1State extends State<Medical_RecordsPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('Medical Records',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
      body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xffC5FFD9).withOpacity(0.6),], 
            ),),
        height: double.infinity,
        width: double.infinity,
        child:Column(children: [
          SizedBox(height: 100,),
          CircleAvatar(radius: 110,
          backgroundColor:Color(0xffC6EFE5),
          child:Image.asset('lib/Images/Group.png'),
          
          ),
          SizedBox(height: 40,),
          Text('Add a medical record.',style:TextStyle(fontWeight: FontWeight.bold,color: Color(0xff222222),fontSize: 25),),
          SizedBox(height: 40,),
          Text("A detailed health history helps a doctor diagnose you btter.",style:TextStyle(color:Color(0xff677294)),)
         ,SizedBox(height: 100,)  ,Container(
                margin:EdgeInsets.only(left: 20,right: 20),
                
                height: 50,
                decoration:BoxDecoration(
                            color:Color(0xff0099E5) ,
                            borderRadius: BorderRadius.circular(10)
                ),
              width: double.infinity,
              child:Center(child:Text('Add a record',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
              )        ],),
        
      ),
    );
  }
}