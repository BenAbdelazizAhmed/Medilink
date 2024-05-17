import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Medical extends StatefulWidget {
  const Medical({super.key});

  @override
  State<Medical> createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('Medicine',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
         decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xffC5FFD9).withOpacity(0.8)], // Couleur blanche en bas, couleur bleue en haut
            ),
          ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80,bottom: 60,left: 30,right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircleAvatar(radius: 110,backgroundImage:AssetImage('lib/Images/imo.png'),),
            SizedBox(height: 30.h,),
Text(
  'Votre Mémoire de Médicaments Personnalisée: Ne Manquez Plus Jamais une Prise',
  style: TextStyle(
    fontSize: 16,
    fontFamily: 'Roboto',
    color: Color(0xff050551),
    shadows: [
      Shadow(
        offset: Offset(2, 2), // Ajusta la posición de la sombra
        blurRadius: 3, // Ajusta la difuminación de la sombra
        color: Colors.grey.withOpacity(0.5), // Color y opacidad de la sombra
      ),
    ],
  ),

  textAlign: TextAlign.center,
)
          ,Expanded(child:Container()),
              Container(
                margin:EdgeInsets.only(left: 30,right: 30),
                height: 55,
                decoration:BoxDecoration(
                            color:Color(0xff0099E5) ,
                            borderRadius: BorderRadius.circular(5)
                ),
              width: double.infinity,
              child:Center(child:Text('Add your medicine',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
              )        ],),
        ),
      ),
    );
  }
}