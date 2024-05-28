import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Acceuil.dart';

class LoginCorrect extends StatefulWidget {
  const LoginCorrect({super.key});

  @override
  State<LoginCorrect> createState() => _LoginCorrectState();
}

class _LoginCorrectState extends State<LoginCorrect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.only(right: ScreenUtil().setWidth(30),left: ScreenUtil().setWidth(30)),
        height: double.infinity,
        width: double.infinity,
      decoration: BoxDecoration(
        image:DecorationImage(image: 
        AssetImage('lib/Images/imagz.png'),fit: BoxFit.cover)
      ),
      child:Column(children: [
        SizedBox(height: 70.h,),
                   Image.asset('lib/Images/immmmmmm.png',height: 120.h,width: 160.w,fit: BoxFit.fill,),
   SizedBox(height: 40.h,),
        Container(width: 340.w,
        height: 45.h,
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
          fontSize: 18.sp,)
          ),
         ),
        )
        ,   SizedBox(height: 20.h,),
        Container(width: 340.w,
        height: 45.h,
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
          fontSize: 18.sp,)
          ),
         ),
        )
        ,TextButton(onPressed:(){}, child:Text('Forget password?',style:TextStyle(color: Color(0xff050551), fontFamily:'ABeeZee',fontSize: 20.sp),))
      ,SizedBox(height: 15.h,),
      GestureDetector(
        onTap:(){
                                                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Med()),
            );
        },
        child: Container(height: 50.h,width: 155.w,
        decoration:BoxDecoration(
          color:Colors.blue,borderRadius: BorderRadius.circular(10)
        ),
        child:Center(child:Text('LOGIN',style:TextStyle(color: Colors.white,fontSize: 20.sp),),),
        ),
      ),
      SizedBox(height: 15.h,),
        Container(width: 310.w,
        padding: EdgeInsets.symmetric(horizontal:ScreenUtil().setWidth(15)),
        height: 50.h,
        decoration:BoxDecoration(
          color: Color(0xffE2E6FF),
          borderRadius:BorderRadius.circular(10)
        ),child:Row(
          mainAxisAlignment:MainAxisAlignment.center
          ,children: [
             CircleAvatar(radius: 15,backgroundColor: Colors.white,
            backgroundImage:AssetImage('lib/Images/pngegg.png'),
            ),
            SizedBox(width: 15.w,),
          Text('SIGN IN WITH GOOGLE',style:TextStyle(color: Color(0xff0099E5)),)
        ],),),
      ],),
      ),
    );
  }
}