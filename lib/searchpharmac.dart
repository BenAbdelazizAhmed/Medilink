import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:op/pharmaciee.dart';

class SearchPharmaciee extends StatefulWidget {
  const SearchPharmaciee({super.key});

  @override
  State<SearchPharmaciee> createState() => _SearchPharmacieeState();
}

class _SearchPharmacieeState extends State<SearchPharmaciee> {
  List<dynamic> pharmacies = []; // Liste pour stocker les pharmacies récupérées
  bool isLoading = true; // Indicateur de chargement

  @override
  void initState() {
    super.initState();
    fetchPharmacies(); // Appel de la fonction pour récupérer les pharmacies lors de l'initialisation
  }

  Future<void> fetchPharmacies() async {
    try {
      final response = await http.get(Uri.parse('http://10.0.2.2:3005/api/pharmacies'));

      if (response.statusCode == 200) {
        setState(() {
          pharmacies = json.decode(response.body);
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load pharmacies');
      }
    } catch (e) {
      setState(() {
        isLoading = false; // Terminer le chargement en cas d'erreur
      });
      print(e); // Afficher l'erreur pour débogage
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 35,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'All Pharmacies',
          style: TextStyle(
            color: Color(0xff0B8FAC),
            fontFamily: 'Roboto',
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10),
        child: Column(
          children: [
            _buildSearchBar(),
            SizedBox(height: 5),
            _buildFilterBar(),
            SizedBox(height: 15),
            isLoading
                ? Center(child: CircularProgressIndicator()) // Afficher un indicateur de chargement pendant que les données sont récupérées
                : _buildPharmacyList(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 50,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                height: 40.h,
                width: 240.w,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 8.w),
                        Text(
                          'Find Your Doctor, Pharma',
                          style: TextStyle(color: Colors.black38, fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 4.w),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Map View',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff7BC1B7), fontSize: 11.sp),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFilterBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildFilterButton('All', Color(0xff6db0d0), Colors.white),
        _buildFilterButton('Location', Colors.white, Color(0xff6db0d0)),
        _buildFilterButton('Open', Colors.white, Color(0xff6db0d0)),
        _buildFilterButton('Day', Colors.white, Color(0xff6db0d0)),
        _buildFilterButton('Night', Colors.white, Color(0xff6db0d0)),
      ],

    );
  }

  Widget _buildFilterButton(String text, Color backgroundColor, Color borderColor) {
    return Container(
      height: 25,
      width: 50.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: borderColor),
        ),
      ),
    );
  }

  Widget _buildPharmacyList() {
    return Expanded(
      child: ListView.builder(
        itemCount: pharmacies.length,
        itemBuilder: (BuildContext context, int index) {
          final pharmacy = pharmacies[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pharmaciee()),
              );
            },
            child: Container(
              height: 90.h,
              margin: EdgeInsets.only(bottom: 15.h),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color.fromRGBO(253, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: Offset(1, 2),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: Offset(-1, -2),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPharmacyImage(pharmacy['imagePath']),
                  _buildPharmacyDetails(pharmacy),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPharmacyImage(String? imagePath) {
    return Container(
      height: 90.h,
      width: 100.w,
      padding: EdgeInsets.only(top: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color.fromRGBO(253, 255, 255, 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.r),
        child: Image.network(
          imagePath ?? '', // Utiliser une chaîne vide si imagePath est null
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Icon(Icons.error), // Afficher une icône d'erreur si l'image ne se charge pas
        ),
      ),
    );
  }

  Widget _buildPharmacyDetails(Map<String, dynamic> pharmacy) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Color.fromRGBO(253, 255, 255, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pharmacy['name'] ?? 'Unknown Pharmacy',
                  style: TextStyle(color: Color(0xff0099E5), fontSize: 12.sp),
                ),
                Icon(Icons.favorite_border_outlined, color: Color(0xff7BC1B7)),
              ],
            ),
            Divider(color: Colors.white, height: 1.5.h),
            Row(
              children: [
                Icon(Icons.place_outlined, color: Colors.black54, size: 15.sp),
                SizedBox(width: 4.w),
                Text(
                  pharmacy['address'] ?? 'Unknown Address',
                  style: TextStyle(color: Colors.black54, fontSize: 11.sp),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Status: ',
                  style: TextStyle(color: Colors.black54, fontSize: 10.sp),
                ),
                Text(
                  pharmacy['status'] ?? 'Unknown Status',
                  style: TextStyle(
                    color: pharmacy['status'] == 'Open Now' ? Colors.green : Colors.red,
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.5.h),
            Row(
              children: [
                RatingBar.builder(
                  initialRating: (pharmacy['rating'] ?? 3.0).toDouble(),
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20.sp,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0.w),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color(0xffffa04b),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(width: 5.w),
                Text(
                  (pharmacy['rating'] ?? 5.0).toString(),
                  style: TextStyle(
                    color: Color(0xff5d6062),
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 4,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Color(0xff4789FC),
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: TextStyle(color: Colors.black),
      selectedLabelStyle: TextStyle(color: Color(0xff4789FC)),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset('lib/Images/diag.png', height: 22),
          label: "Diagnostics",
        ),
        BottomNavigationBarItem(
          icon: Image.asset('lib/Images/chat.png', height: 22),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Image.asset('lib/Images/user.png', height: 22),
          label: "Profile",
        ),
      ],
    );
  }
}
