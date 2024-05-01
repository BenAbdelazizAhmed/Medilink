import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:op/InscriptionCorrect.dart';
import 'package:op/Login.dart';
class IntroductionScreen extends StatefulWidget {
  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  late PageController _pageController;
  int _currentPage = 0;
  List<String> _imagePaths = [
    'lib/Images/io1.png',
    'lib/Images/io3.png',
    'lib/Images/io2.png',
    'lib/Images/io6.png',
  ];

  List<Padding> _pageTexts = [
     Padding(
      padding: const EdgeInsets.only(left: 20,right: 30,top:205.0),
      child: Text(
            "Our app makes it easy to get primary care for your body and mind right from your phone. Need to schedule an appointment with your doctor? Request a prescription.",
        style: TextStyle(
          color: Colors.black,
           fontFamily:'ABeeZee',
          fontSize:17,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 160.0,left: 10),
      child: Text(
           "Access to a doctor in less than 3 minutes for your urgent medical care.",
        style: TextStyle(
          fontSize: 20,
           color: Color(0xff050551),
           fontWeight: FontWeight.w100,
          fontFamily:'ABeeZee',
          
        ),
        textAlign: TextAlign.center,
      ),
    ),
  Padding(
      padding: const EdgeInsets.only(top:145.0,left: 20,right: 20),
      child: Text(
           "Access to your medical record from your phone",
        style: TextStyle(
  fontSize: 20,
           color: Color(0xff050551),
           fontWeight: FontWeight.w100,
          fontFamily:'ABeeZee',         
        ),
        textAlign: TextAlign.center,
      ),
    ),
   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'the range of home health care services a patient can receive at home is limtless',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    ),

  ];

  List<Padding> _pageTitles = [
    Padding(
      padding: const EdgeInsets.only(left: 70,right: 50,top:105.0),
      child: Text(
        'Welcome To MEDILINK',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w500,
          fontFamily:'Audiowide',
          fontSize:40,
          letterSpacing: 2
        ),
        textAlign: TextAlign.center,
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top:90.0,left: 40,right:40),
      child: Text(
        'Get a doctor easily for your diease',
        style: TextStyle(
          color: Color(0xff050551),
          fontFamily:'ABeeZee',
          fontSize: 26,
          fontWeight: FontWeight.w400
        ),
        textAlign: TextAlign.center,
      ),
    ),
  Padding(
      padding: const EdgeInsets.only(top:90.0,left: 40,right: 40),
      child: Text(
        'Track your health regularly',
        style: TextStyle(
            color: Color(0xff050551),
          fontFamily:'ABeeZee',
          fontSize: 26,
          fontWeight: FontWeight.w400
        ),
        textAlign: TextAlign.center,
      ),
    ),
   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'the range of home health care services a patient can receive at home is limtless',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void goToNextPage() {
    if (_currentPage < _imagePaths.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentPage++;
      });
    }
  }

  void goToPreviousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        _currentPage--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _imagePaths.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(
                _imagePaths[index],
                fit: BoxFit.fill,
                width: double.infinity,
              );
            },
          ),
        _currentPage<3? _pageTitles[_currentPage]:Padding(
          padding: const EdgeInsets.only(top:150.0,left: 30,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(radius:97,backgroundColor: Colors.blue,
              child:               CircleAvatar(radius:95,backgroundColor: Colors.white,),
              ),
              SizedBox(height: 30.h,),
              Text("The range of home health care services a patient can receive at home is limitless.",textAlign:TextAlign.center,style: TextStyle(fontSize: 20,letterSpacing: 1,  color: Color(0xff050551),
          fontFamily:'ABeeZee',),)
                       ,     SizedBox(height: 70.h,),
                       SizedBox(
                        width: 260.w,
                        height: 55.h
                        ,child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0xff4491f9),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          )
                          ,onPressed:(){
                                                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Login()),
            );
                        }, child:Text('Get started',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),))),
                        SizedBox(height: 5.h,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center
                        ,children: [
                         Text('Have an account?',style:TextStyle(   color: Color(0xff050551),
          fontFamily:'ABeeZee',fontSize: 20),),
                        TextButton(onPressed:(){
                             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>InscriptionCorrect()),
            );
                        }, child:Text('Sign Up',style:TextStyle(
          fontFamily:'ABeeZee',fontSize: 20,color: Color(0xff4491f9)),))
                       ],)
            ],
          ),
        ),
          _currentPage<3?Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: _pageTexts[_currentPage]
              ),
            ],
          ):Container(),
        _currentPage<3?  Positioned(
            bottom: 90,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 45.h,
                  width: 90.w,
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(      
                      shape:RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(10)
                      ),
                      backgroundColor: Colors.white,elevation: 0),
                      
                    onPressed: goToPreviousPage,
                    child: Text('Back', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(
                   height: 45.h,
                  width: 90.w,
                  child: ElevatedButton(
                    
                                 style: ElevatedButton.styleFrom(      
                    elevation: 0,
                    backgroundColor: Color(0xff4491f9),
                        shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(10)
                        )),
                    onPressed: goToNextPage,
                    
                    child: Text('Next',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
              ],
            ),
          ):Container(),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _imagePaths.length; i++) {
      indicators.add(
        i == _currentPage ? _indicator(true) : _indicator(false),
      );
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0.h,
      width: isActive ? 24.0.w : 16.0.w,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
