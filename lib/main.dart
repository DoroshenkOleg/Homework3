import 'package:flutter/material.dart';
import 'package:homework3/page/list_of_posts.dart';
import 'package:homework3/page/photo_from_the_internet.dart';
import 'package:homework3/page/widget_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'homework',
      theme: ThemeData.dark(),
      home: const BottomNavigationApp(),
    );
  }
}

class BottomNavigationApp extends StatefulWidget {
  const BottomNavigationApp({super.key});

  @override
  State<BottomNavigationApp> createState() => _BottomNavigationAppState();
}
class _BottomNavigationAppState extends State<BottomNavigationApp> {
  int selectindex = 1;

  void onTapped(int index) {
    setState(() {
      selectindex = index;
    });
  }
  Widget getPage(int index) {
    switch (index) {
      case 0:
        return ListOfPosts();
      case 1:
        return PhotoFromTheInternet();
      case 2:
        return WidgetPage();
      default:
        return ListOfPosts();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Homework'),
        actions: const [
          Icon(Icons.ac_unit),
          Icon(Icons.account_balance_outlined),
          SizedBox(width: 15,)
        ],
      ),
      body: getPage(selectindex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectindex,
        onTap: onTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.line_style), label: 'ListOfPosts'),
          BottomNavigationBarItem(icon: Icon(Icons.photo_camera_back), label: 'InternetPhoto'),
          BottomNavigationBarItem(icon: Icon(Icons.widgets), label: 'WidgetPage'),
        ],
        selectedItemColor: Colors.green[600],
        unselectedItemColor: Colors.green[300],
        backgroundColor: Colors.black26,
        iconSize: 25,
        selectedFontSize: 23,
        unselectedFontSize: 16,
      ),
    );
  }
 }
