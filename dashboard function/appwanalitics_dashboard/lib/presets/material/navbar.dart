import 'package:flutter/material.dart';

class DBottomNavBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final List<Widget> child;

  const DBottomNavBar({required this.items, required this.child, Key? key})
      : super(key: key);

  @override
  _DBottomNavBarState createState() => _DBottomNavBarState();
}

class _DBottomNavBarState extends State<DBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: widget.items,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: widget.child.elementAt(_selectedIndex),
    );
  }
}
