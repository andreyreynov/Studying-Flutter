import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.lightBlue[100],
        home: Scaffold(
            appBar: AppBar(
                toolbarHeight: 60,
                backgroundColor: Colors.lightBlue[100],
                title: const Text('BOM calculator'),
                centerTitle: true,
                titleTextStyle: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.deepOrangeAccent,
                        Colors.orange,
                      ],
                    ),
                  ),
                ))));
  }
}
