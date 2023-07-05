import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationBar(),
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 255, 0, 0),
      ),
    );
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
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
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
    _LoginPage(),
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
          centerTitle: true,
          title: const Image(
            image: AssetImage('assests/images/AppLogo.png'),
            fit: BoxFit.contain,
            height: 40,
          ),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                Colors.red.shade500,
                Colors.red.shade100
              ])))),
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

class _LoginPage extends StatelessWidget {
  const _LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Вход'),
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Регистрация'),
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                ),
              )
            ],
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: SizedBox(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Логин'),
                  ))),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Пароль'),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: SizedBox(
              width: 400,
              height: 50,
              child: FilledButton(
                onPressed: () {},
                child: Text('Войти'),
                style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 255, 185, 180)),
              ),
            ),
          )
        ]);
  }
}
