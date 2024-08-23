import 'dart:io'; // Necessary for File operations

import 'package:file_picker/file_picker.dart'; // Import du package file_picker
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:op/Medical_Record.dart';

class Medical_RecordsPage1 extends StatefulWidget {
  const Medical_RecordsPage1({super.key});

  @override
  State<Medical_RecordsPage1> createState() => _Medical_RecordsPage1State();
}

class _Medical_RecordsPage1State extends State<Medical_RecordsPage1> {
  File? selectedFile;

  Future<void> _selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.isNotEmpty) {
      setState(() {
        selectedFile = File(result.files.single.path!);
        _uploadFile(selectedFile!);
      });
    }
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: Container(
          height: 144.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: _selectFile,
                child: Row(
                  children: [
                    Icon(Icons.file_copy),
                    SizedBox(width: 15.w),
                    Text('Select File'),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSuccessDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Container(
            height: 300.h,
            width: 450.w,
            child: Column(
              children: [
                Text(
                  'Thank you!',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    color: Color(0xff0099E5),
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(20)),
                Text(message),
                SizedBox(height: ScreenUtil().setHeight(30)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => medical_record()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20),
                    ),
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Color(0xff0099E5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 300.w,
                    child: Center(
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(context).pop();
    });
  }

  Future<void> _uploadFile(File file) async {
    print('Uploading file: ${file.path}');
    try {
      final request = http.MultipartRequest(
        'POST',
        Uri.parse('http://10.0.2.2:3005/api/files/upload'),
      );
      request.files.add(await http.MultipartFile.fromPath('file', file.path));
      final response = await request.send();

      if (response.statusCode == 200) {
        print("File uploaded successfully");
        _showSuccessDialog('File uploaded successfully');
      } else {
        print('Failed to upload file: ${response.statusCode}');
        _showSuccessDialog('Failed to upload file. Please try again.');
      }
    } catch (e) {
      print('Error uploading file: $e');
      _showSuccessDialog('Error uploading file. Please try again.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          'Medical Records',
          style: TextStyle(
            color: Color(0xff4491f9),
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xfffafafa),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Image.asset(
                'lib/Images/19834.jpg',
                height: 240,
                fit: BoxFit.fill,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text(
                'Add a medical record.',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Manrope',
                  color: Color(0xff4491f9),
                  fontSize: 25.sp,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Text(
                  "A detailed health history helps a doctor diagnose you better.",
                  style: TextStyle(
                    color: Color(0xff677294),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Text(
                  "Only JPEG, PNG, And PDF FILES with max size 15 MB.",
                  style: TextStyle(
                    color: Color(0xff0B8FAC),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
                child: SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff4491f9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: _handleAttachmentPressed,
                    child: Center(
                      child: Text(
                        'Add a medical record',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 4,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff4789FC),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedLabelStyle: TextStyle(color: Color(0xff4789FC)),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Image.asset('lib/Images/diag.png', height: 22.h),
            label: "Diagnostics",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/Images/chat.png', height: 22.h),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/Images/user.png', height: 22.h),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
