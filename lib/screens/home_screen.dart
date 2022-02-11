import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:sikahrthy_app/screens/service_Screen.dart';
import 'package:sikahrthy_app/widgets/category_card.dart';

import '../image_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final screen = [
    HomeScreen(),
    ServiceScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      backgroundColor: Color(0xFFffa000),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .95,
            decoration: BoxDecoration(
              color: Color(0xFFffa000),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "WellCome",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                    child: CarouselSlider(
                      options: CarouselOptions(autoPlay: true),
                      items: HomeSliderImageList.map((item) => Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Center(
                                child: Image.asset(item,
                                    fit: BoxFit.cover, width: 1000)),
                          )).toList(),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Our Courses',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                // SearchBar(),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Web Development Course",
                          svgSrc: "assets/images/web.jpeg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Android Development Course",
                          svgSrc: "assets/images/Android.jpeg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Spring Boot Course",
                          svgSrc: "assets/images/Spring.jpeg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Big Data Course",
                          svgSrc: "assets/images/Big_DAta.jpeg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Machine Learning Course",
                          svgSrc: "assets/images/Ml.jpeg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Java Course",
                          svgSrc: "assets/images/Java.jpeg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
