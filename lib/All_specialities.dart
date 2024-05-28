import 'package:flutter/material.dart';
import 'package:op/MedicalConfirm.dart';

class specialities extends StatefulWidget {
  const specialities({super.key});

  @override
  State<specialities> createState() => _specialitiesState();
}

class _specialitiesState extends State<specialities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(onPressed: (){},icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('All Specialities',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
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
        child:ListView.builder( itemCount: 10,
                  padding: EdgeInsets.only(top: 0),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
  margin: EdgeInsets.only(left: 20, right: 10, top: 10),
  padding: EdgeInsets.only(right: 10, left: 10, top: 5),
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        offset: Offset(1, 1),
        spreadRadius: 3,
        blurRadius: 0,
        color: Colors.black.withOpacity(0.05),
      ),
    ],
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  ),
  height: 110,
  width: double.infinity,
  child: Row(
    children: [
      Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('lib/Images/pha1.png', fit: BoxFit.fill),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap:(){
                
                 Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MedicalConfirm()),
      );
              }
              ,child: Text("General",style:TextStyle(color:Color(0xff333333),fontWeight: FontWeight.w500),)),
            Text(
              'Cardiology is a medical specialty and a branch of internal medicine concerned with disorders of the heart.',
              style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color:Color(0xff000000)),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    ],
  ),
);
    }
        )
      ),
    );
  }
}