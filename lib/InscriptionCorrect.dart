import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/ChooseCreen.dart';

class InscriptionCorrect extends StatefulWidget {
  const InscriptionCorrect({super.key});

  @override
  State<InscriptionCorrect> createState() => _InscriptionCorrectState();
}

class _InscriptionCorrectState extends State<InscriptionCorrect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding:EdgeInsets.only(left: ScreenUtil().setWidth(30),right: ScreenUtil().setWidth(30)),
        height: double.infinity,
        width: double.infinity,
      decoration: BoxDecoration(
        image:DecorationImage(image: 
        AssetImage('lib/Images/imagz.png'),fit: BoxFit.cover)
      ),
      child:Column(children: [
        SizedBox(height: 40.h,),
        Image.asset('lib/Images/immmmmmm.png',height: 130.h,width: 200.w,),
  SizedBox(height: 40,),
        Container(width: 340,
        height: 40,
        decoration:BoxDecoration(
          color: Color(0xffE2E6FF),
          borderRadius:BorderRadius.circular(10)
        ),
         
         child:TextFormField(
          
          decoration:InputDecoration(
              border: InputBorder.none,
            prefixIcon:Icon(Icons.person,color: Color(0xff596FFF),),
            label:Text('Full Name'),labelStyle:TextStyle
            (color: Color(0xff050551), fontFamily:'ABeeZee',
          fontSize: 18,)
          ),
         ),
        )
        ,   SizedBox(height: 10,),
            Container(width: 340,
        height: 40,
        decoration:BoxDecoration(
          color: Color(0xffE2E6FF),
          borderRadius:BorderRadius.circular(10)
        ),
         
         child:TextFormField(
          
          decoration:InputDecoration(
              border: InputBorder.none,
            prefixIcon:Icon(Icons.email,color: Color(0xff596FFF),),
            label:Text('Email Address'),labelStyle:TextStyle
            (color: Color(0xff050551), fontFamily:'ABeeZee',
          fontSize: 18,)
          ),
         ),
        )
        ,   SizedBox(height: 10,),
            Container(width: 340,
        height: 40,
        decoration:BoxDecoration(
          color: Color(0xffE2E6FF),
          borderRadius:BorderRadius.circular(10)
        ),
         
         child:TextFormField(
          
          decoration:InputDecoration(
              border: InputBorder.none,
            prefixIcon:Icon(Icons.phone,color: Color(0xff596FFF),),
            label:Text('Phone Number'),labelStyle:TextStyle
            (color: Color(0xff050551), fontFamily:'ABeeZee',
          fontSize: 18,)
          ),
         ),
        )
        ,   SizedBox(height: 10,),
        Container(width: 340,
        height: 40,
        decoration:BoxDecoration(
          color: Color(0xffE2E6FF),
          borderRadius:BorderRadius.circular(10)
        ),
         
         child:TextFormField(
          
          decoration:InputDecoration(
              border: InputBorder.none,
            prefixIcon:Icon(Icons.lock,color: Color(0xff596FFF),),
            label:Text('Password'),labelStyle:TextStyle
            (color: Color(0xff050551), fontFamily:'ABeeZee',
          fontSize: 18,)
          ),
         ),
        )
      ,  SizedBox(height: 10,),
        Container(width: 340,
        height: 40,
        decoration:BoxDecoration(
          color: Color(0xffE2E6FF),
          borderRadius:BorderRadius.circular(10)
        ),
         
         child:TextFormField(
          
          decoration:InputDecoration(
              border: InputBorder.none,
            prefixIcon:Icon(Icons.calendar_month,color: Color(0xff596FFF),),
            label:Text('Date of Birth'),labelStyle:TextStyle
            (color: Color(0xff050551), fontFamily:'ABeeZee',
          fontSize: 18,)
          ),
         ),
        )
      
        ,TextButton(onPressed:(){}, child:Text('Forget password?',style:TextStyle(color: Color(0xff050551), fontFamily:'ABeeZee',fontSize: 20),))
      ,SizedBox(height: 10,),
      GestureDetector(
        onTap: (){
                                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>ChooseScreen()),
            );
        },
        child: Container(height: 55,width: 150,
        decoration:BoxDecoration(
          color:Colors.blue,borderRadius: BorderRadius.circular(10)
        ),
        child:Center(child:Text('LOGIN',style:TextStyle(color: Colors.white,fontSize: 20),),),
        ),
      ),
      SizedBox(height: 10,),
       ],),
      ),
    );
  }
}