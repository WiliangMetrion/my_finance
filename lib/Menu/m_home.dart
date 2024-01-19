import 'package:flutter/material.dart';
import 'package:my_finance/Menu/m_dashboard.dart';
import 'package:my_finance/Menu/m_history.dart';
import 'package:my_finance/Menu/m_transaction.dart';
import 'package:my_finance/Menu/m_user.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> menus = [
    Dashboard(),
    History(),
    Transaction(),
    UserSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: menus.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_outlined),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
