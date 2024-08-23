import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:op/MyDoctor.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final TextEditingController posttextt = TextEditingController();
  List<Map<String, dynamic>> posts = []; // List to store fetched posts
  File? _image;

  @override
  void initState() {
    super.initState();
    _fetchPosts();
  }

  Future<void> _fetchPosts() async {
    final url = Uri.parse('http://10.0.2.2:3005/api/posts'); // Your backend URL
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        setState(() {
          posts = List<Map<String, dynamic>>.from(json.decode(response.body));
        });
      } else {
        print('Failed to fetch posts');
      }
    } catch (e) {
      print('Error fetching posts: $e');
    }
  }

  Future<void> _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _createPost(String postText) async {
    final url = Uri.parse('http://10.0.2.2:3005/api/posts'); // Your backend URL

    try {
      var request = http.MultipartRequest('POST', url);

      request.fields['content'] = postText;
      request.fields['userId'] = '6680a509c0ac564c3149343a';
      request.fields['title'] = postText;

      if (_image != null) {
        var pic = await http.MultipartFile.fromPath(
          'picture',
          _image!.path,
          contentType: MediaType('image', 'jpeg'), // Adjust if using different image formats
        );
        request.files.add(pic);
      }

      var response = await request.send();

      if (response.statusCode == 201) {
        print('Post created successfully');
        _fetchPosts(); // Refresh posts after creating a new one
      } else {
        print('Failed to create post');
      }
    } catch (e) {
      print('Server connection error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
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
          'My Doctors',
          style: TextStyle(
            color: Color(0xff0B8FAC),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              _showCreatePostDialog(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xffE5E7EB).withOpacity(0.3),
                border: Border.all(color: Colors.blueAccent, width: 0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "What's on your mind?",
                        style: TextStyle(
                          color: Color(0xffA1A8B0),
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      color: Color(0xffA1A8B0).withOpacity(0.5),
                      onPressed: () {
                        // Action à effectuer lors de l'envoi du post
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 740,
            width: double.infinity,
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts.reversed.toList()[index];
                return Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(imagePaths[index % imagePaths.length]),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${post['firstName'] ?? 'Unknown'} ${post['lastName'] ?? 'User'}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  color: Color(0xff48555B),
                                ),
                              ),
                              Text(
                                '5 minutes ago',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            height: 30,
                            width: 70,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.vertical,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemSize: 15,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Color(0xffffa04b),
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Text(
                                  '4.8',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        post['title'] ?? '',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff48555B).withOpacity(0.8),
                        ),
                      ),
                      Text(
                        post['description'] ?? '',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.red),
                          SizedBox(width: 10),
                          Text('10 Likes', style: TextStyle(fontSize: 12.sp)),
                          SizedBox(width: 20),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
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
          BottomNavigationBarItem(icon: Image.asset('lib/Images/diag.png', height: 22), label: "Diagnostics"),
          BottomNavigationBarItem(icon: Image.asset('lib/Images/chat.png', height: 22), label: "Chat"),
          BottomNavigationBarItem(icon: Image.asset('lib/Images/user.png', height: 22), label: "Profile"),
        ],
      ),
    );
  }

  void _showCreatePostDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Create Post"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  _getImageFromGallery();
                },
                child: _image != null
                    ? Image.file(_image!, height: 100)
                    : Icon(Icons.image, size: 50),
              ),
              TextField(
                controller: posttextt,
                decoration: InputDecoration(
                  hintText: "Write your post here",
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text("Post"),
              onPressed: () {
                _createPost(posttextt.text);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
