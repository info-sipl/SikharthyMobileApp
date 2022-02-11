import 'package:flutter/material.dart';
import 'package:sikahrthy_app/screens/AllCourseScreen/all_course_screen.dart';
import 'package:sikahrthy_app/widgets/category_card.dart';

class ServiceScreen extends StatefulWidget {
  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .95,
            decoration: BoxDecoration(
              color: Color(0xFFffa000),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Our Services",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Website Design",
                          svgSrc: "assets/images/web.jpeg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Application Design",
                          svgSrc: "assets/images/Android.jpeg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Training",
                          svgSrc: "assets/images/web.jpeg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllCoursesScreen()),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Content Writting",
                          svgSrc: "assets/images/Content.jpeg",
                          press: () {},
                        ),
                        // CategoryCard(
                        //   title: "Content Writting",
                        //   svgSrc: "assets/images/Content.jpeg",
                        //   press: () {},
                        // ),
                        // CategoryCard(
                        //   title: "Some other section",
                        //   svgSrc: "assets/images/logo.ico",
                        //   press: () {},
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
