import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
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
    return
        // Center(
        //   child: _widgetOptions.elementAt(_selectedIndex),
        // );

        BottomNavigationBar(
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
        
        
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.red[900],
      onTap: _onItemTapped,
    );
  }
}
