import 'package:flutter/material.dart';
import 'package:sach_hay/BottomBar/Book/header_book.dart';

import 'BottomBar/Booked/header_booked.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sách Hay',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final tabbar = [
    header_Book(),
    header_Booked()
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: tabbar[_selectedIndex],
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.black,
       unselectedItemColor: Colors.grey,
       selectedItemColor: Colors.white,
       currentIndex: _selectedIndex,
       onTap: _onItemTapped,
       items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(
           icon: Icon(Icons.home_filled),
           backgroundColor: Colors.grey,
           label: "Sách hay"
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.receipt),
           backgroundColor: Colors.grey,
           label: "Đang đọc"
         )
       ],
     ),
   );
  }
}
