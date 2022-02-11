import 'package:flutter/material.dart';
import 'package:sikahrthy_app/constants.dart';
import 'package:sikahrthy_app/screens/about_us_screen.dart';
import 'package:sikahrthy_app/screens/home_screen.dart';
import 'package:sikahrthy_app/screens/service_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> _ScaffoldState = GlobalKey<ScaffoldState>();

  int currentIndex = 0;
  final screen = [
    HomeScreen(),
    ServiceScreen(),
    AboutUsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sikharthy Infotech'),
          backgroundColor: Color(0xFFff8f00),
        ),
        key: _ScaffoldState,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.deepOrangeAccent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined),
              label: 'Services',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.face), label: 'About us'),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: Text(
                    'here will be user profile picture and name',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Account'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Cart'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.border_color),
                title: Text('Feedback'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Gallery'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Campus Ambasador'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Quiz Contest'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Contact Us'),
                onTap: () => {},
              ),
            ],
          ),
        ),
        body: screen[currentIndex],
      ),
    );
  }
}
