import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../chips/carouselSlider.dart';
import '../chips/scrollableSinglechip.dart';

class MyScreen extends StatelessWidget {
  static const String routeName = "Home";
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        toolbarHeight: 90,
        leading: Image.asset("assets/images/Logo Small.png"),
        leadingWidth: 80,
        title: Padding(
          padding: const EdgeInsets.only(right: 120.0),
          child: Image.asset("assets/images/AudiBooks..png",
              height: 20, width: 200),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Color(0xFF4838D1),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 200,
                ),
                Text(
                  'See more',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4838D1),
                  ),
                ),
              ],
            ),
            ScrollableSinglechip(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Recommended For You',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  'See more',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4838D1),
                  ),
                ),
              ],
            ),
            MyImageSlider(),
            Row(
              children: [
                Text(
                  'Best Seller',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 200,
                ),
                Text(
                  'See more',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4838D1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            CarouselSlider.builder(

              itemCount: 15,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    alignment: AlignmentDirectional.topStart,

                    child: Image.asset('assets/images/List_ Best Seller.png'),
                  ),
              options: CarouselOptions(

                height: 200,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),

            ),



          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFF4838D1),
          unselectedItemColor: Color(0xFF6A6A8B),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.document_scanner_outlined,
                ),
                label: "Library")
          ]),
    );
  }
}
