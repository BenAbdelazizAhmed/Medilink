import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/Acceuil.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

List<String> listimg = [
  'lib/Images/im1.png',
  'lib/Images/im2.png',
  'lib/Images/im3.png',
  'lib/Images/im4.png'
];
int i = 0;

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              listimg[i],
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 110.h,
            left: 45.w,
            right: 45.w, // Add right padding to avoid overflow
            child: Text(
              "What interests you the most?",
              style: TextStyle(
                fontSize: 17.sp,
                color: Color(0xff050551),
                fontWeight: FontWeight.w100,
                fontFamily: 'ABeeZee',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 110.h,
            left: 20.w,
            right: 20.w, // Add right padding to avoid overflow
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust spacing to avoid overflow
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xff9c9898).withOpacity(0.5),
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.black, size: 35),
                    onPressed: () {
                      setState(() {
                        if (i < listimg.length - 1) {
                          i++;
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Med()),
                          );
                        }
                      });
                    },
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xff9c9898).withOpacity(0.5),
                  child: IconButton(
                    icon: Icon(Icons.check, color: Colors.black, size: 35),
                    onPressed: () {
                      setState(() {
                        if (i < listimg.length - 1) {
                          i++;
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Med()),
                          );
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
