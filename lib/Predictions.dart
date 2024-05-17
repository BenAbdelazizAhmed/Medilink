import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Predictions extends StatefulWidget {
  const Predictions({super.key});

  @override
  State<Predictions> createState() => _PredictionsState();
}

class _PredictionsState extends State<Predictions> {
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
          padding: const EdgeInsets.only(top: 40,bottom: 60,left: 30,right: 60),
          child: Column(
            children: [
              Image.asset('lib/Images/imp.png'),
                          SizedBox(height: 20.h,),
                                      Text('Votre Radar de Santé Personnel: Prédiction Fiable, Tranquillité Garantie!',style:TextStyle(color:Color(0xff050551),fontSize: 16,fontFamily: 'Roboto',fontWeight: FontWeight.w100,),textAlign: TextAlign.center,)
,SizedBox(height: 30,),
            Container(height: 30,width: double.infinity,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start
              ,children: [
              Row(children: [
             Text('Disease')
               ],)
          ,  Expanded(child: Container()),
            IconButton(onPressed:(){}, icon:Icon(Icons.more_vert))
            ],),),
            Expanded(child:Container()),
             Container(
                margin:EdgeInsets.only(left: 20,right: 20),
                
                height: 50,
                decoration:BoxDecoration(
                            color:Color(0xff0099E5) ,
                            borderRadius: BorderRadius.circular(10)
                ),
              width: double.infinity,
              child:Center(child:Text('Next',style:TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize:20),),),
              )        
                ],),
        ),
      ),
    );
  }
}