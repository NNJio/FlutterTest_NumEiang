import 'package:flutter/material.dart';

import '../widgets/day_row.dart';
import '../widgets/header_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '1',
      style: optionStyle,
    ),
    Text(
      '2',
      style: optionStyle,
    ),
    Text(
      '3',
      style: optionStyle,
    ),
    Text(
      '4',
      style: optionStyle,
    ),
    Text(
      '5',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.red.shade200,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Spacer(), //!
            HeaderRow(),
            // Spacer(), //!
            DayRow(),
            // Spacer(flex: 12), //!
            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'หน้าแรก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'ปฏิทิน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: 'ฤกษ์มงคล',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_outlined),
            label: 'บันทึกช่วยจำ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: 'โปร์ไฟล์',
          ),
        ],
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red[900],
        onTap: _onItemTapped,
      ),
    );
  }
}
