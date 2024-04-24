import 'package:flutter/material.dart';
import 'package:op/Acceuil.dart';

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
        height: double.infinity,
        width: double.infinity,
      decoration: BoxDecoration(
        image:DecorationImage(image: 
        AssetImage('lib/Images/imagz.png'),fit: BoxFit.cover)
      ),
      child:Column(children: [
        SizedBox(height: 80,),
        CircleAvatar(radius: 70,
        backgroundColor: Colors.white,
        child:CircleAvatar(
          radius: 65,
          backgroundColor:Color(0xffE2E6FF)
        ),),
        SizedBox(height: 40,),
        Container(width: 340,
        height: 45,
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
        ,   SizedBox(height: 15,),
            Container(width: 340,
        height: 45,
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
        ,   SizedBox(height: 15,),
            Container(width: 340,
        height: 45,
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
        ,   SizedBox(height: 15,),
        Container(width: 340,
        height: 45,
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
        ,TextButton(onPressed:(){}, child:Text('Forget password?',style:TextStyle(color: Color(0xff050551), fontFamily:'ABeeZee',fontSize: 20),))
      ,SizedBox(height: 15,),
      GestureDetector(
        onTap: (){
                                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Med()),
            );
        },
        child: Container(height: 55,width: 150,
        decoration:BoxDecoration(
          color:Colors.blue,borderRadius: BorderRadius.circular(10)
        ),
        child:Center(child:Text('LOGIN',style:TextStyle(color: Colors.white,fontSize: 20),),),
        ),
      ),
      SizedBox(height: 15,),
        Container(width: 340,
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 50,
        decoration:BoxDecoration(
          color: Color(0xffE2E6FF),
          borderRadius:BorderRadius.circular(10)
        ),child:Row(children: [
             CircleAvatar(radius: 15,backgroundColor: Colors.white,
            backgroundImage:AssetImage('lib/Images/pngegg.png'),
            ),
            SizedBox(width: 15,),
          Text('SIGN IN WITH GOOGLE',style:TextStyle(color: Color(0xff0099E5)),)
        ],),),
      ],),
      ),
    );
  }
}