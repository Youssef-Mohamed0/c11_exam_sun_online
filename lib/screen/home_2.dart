import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../chips/carousel_2.dart';



class MyScreen2 extends StatelessWidget {
  static const String routeName = "Home";
  const MyScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        toolbarHeight: 90,
        leading: Image.asset("assets/images/logo.png"),
        leadingWidth: 90,
        title: Padding(
          padding: const EdgeInsets.only(right: 170.0, top: 10),
          child: Image.asset("assets/images/Moody.png", height: 30, width: 200),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Badge(
              child: Icon(
                Icons.add_alert,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  'Hello, Sara Rose\nHow are you feeling today ?',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:  8.0),
                    child: Image.asset('assets/images/Frame 14.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Image.asset('assets/images/Frame 19.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Image.asset('assets/images/Frame 15.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Image.asset('assets/images/Frame 16.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Text(
                    'Feature',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220.0),
                  child: Text(
                    'See more >',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF027A48),
                    ),
                  ),
                ),
              ],
            ),


            ScoundImageSlider(),

SizedBox(height: 10,),


            Row(
              children: [
                Text(
                  'Exercise',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220.0),
                  child: Text(
                    'See more >',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF027A48),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/Frame 33.png'),
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/Frame 34.png'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF027A48),
          unselectedItemColor: Color(0xFF6A6A8B),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                ),
                label: ""),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "",
            ),
          ]),
    );
  }
}
