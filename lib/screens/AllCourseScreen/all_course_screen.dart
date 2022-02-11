import 'package:flutter/material.dart';
import 'package:sikahrthy_app/models/Product.dart';
import 'package:sikahrthy_app/screens/AllCourseScreen/Components/body.dart';

class AllCoursesScreen extends StatefulWidget {
  @override
  _AllCoursesScreenState createState() => _AllCoursesScreenState();
}

class _AllCoursesScreenState extends State<AllCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffa000),
      appBar: AppBar(
        title: Text('Sikharthy Infotech'),
        backgroundColor: Color(0xFFff8f00),
      ),
      body: Body(),
    );
  }
}
