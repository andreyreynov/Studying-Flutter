import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(color: Colors.red, home: NavigationBar());
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Страница "Объекты"',
      style: optionStyle,
    ),
    Text(
      'Страница "Наряды"',
      style: optionStyle,
    ),
    Text(
      'Страница "Добавить"',
      style: optionStyle,
    ),
    Text(
      'Страница "Субнаряды"',
      style: optionStyle,
    ),
    Text(
      'Страница "Пользователи"',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 167, 167),
        centerTitle: true,
        title: const Image(
          image: AssetImage('assests/images/AppLogo.png'),
          fit: BoxFit.contain,
          height: 40,
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Объекты',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Наряды',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Добавить',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Субнаряды',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Пользователи',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
