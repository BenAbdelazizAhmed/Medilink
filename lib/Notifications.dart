import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(       onPressed: () {
  Navigator.pop(context);
},icon:Icon(Icons.arrow_back_ios),),
          centerTitle:true,
          title:Text('Notfications',style:TextStyle(color:Color(0xff0B8FAC),     fontFamily: 'Roboto',
fontWeight: FontWeight.w400,   fontStyle: FontStyle.italic,fontSize: 20,
),),
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(children: [
            Row(
              children: [
                Column(
                  children: [
                    Text('Appointment Cancelled!',style:TextStyle(fontWeight: FontWeight.bold)),
                    Text('Today | 15:36pm'),
                  ],
                )
              ],
            ),
            Text('If you have insufficient funds on your payment card account and therefore your payment is not processed successfully, your application will be cancelled')
       ,  Row(
              children: [
                Column(
                  children: [
                    Text('Appointment Cancelled!',style:TextStyle(fontWeight: FontWeight.bold)),
                    Text('Today | 15:36pm'),
                  ],
                )
              ],
            ),
            Text('If you have insufficient funds on your payment card account and therefore your payment is not processed successfully, your application will be cancelled')
          ],),
        ),
    );
  }
}