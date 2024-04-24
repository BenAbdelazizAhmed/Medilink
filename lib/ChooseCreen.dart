import 'package:flutter/material.dart';
import 'package:op/Acceuil.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

List<String> Listimg=[
  'lib/Images/im1.png',
  'lib/Images/im2.png',
  'lib/Images/im3.png',
  'lib/Images/im4.png'
];
int i=0;
class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
        Container(
          height: double.infinity,width: double.infinity,
       child: Image.asset(Listimg[i],fit: BoxFit.cover,),
        ),
        Positioned(
          top: 110,
          left: 65
          ,child:Text(
           "What interests you the most?",
        style: TextStyle(
          fontSize: 20,
           color: Color(0xff050551),
           fontWeight: FontWeight.w100,
          fontFamily:'ABeeZee',
          
        ),
        textAlign: TextAlign.center,
      ),),
        Positioned(
          bottom: 110,
          left: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center
            ,children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Color(0xff9c9898).withOpacity(0.5),
              child:IconButton(icon: Icon(Icons.close,color: Colors.black,size: 35,),onPressed:(){
               setState(() {
                  i++;
                                            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Med()),
            );
               });
              },),
            ),
            SizedBox(width:115,)
            , CircleAvatar(
              radius: 35,
              backgroundColor: Color(0xff9c9898).withOpacity(0.5),
              child:IconButton(icon: Icon(Icons.check,color: Colors.black,size: 35,),onPressed:(){
                setState(() {
                                  i++;
                                  if(i==4){
                                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Med()),
            );
                                    
                                  }
                });
                            },),
            )
          ],),
        )
      ]),
    );
  }
}