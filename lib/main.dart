import 'package:book_ticket/screens/home_screen.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  static final List<Widget> _widgetOptions = [
    const HomeScreen(),
    Text("Search"),
    Text("Tickets"),
    Text("Profile"),
  ];

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _seletedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: Scaffold(
        body: MyApp._widgetOptions[_seletedIndex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            currentIndex: _seletedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: const Color(0xFF526480),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.airplane_ticket), label: "Ticket"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
    );
  }
}
