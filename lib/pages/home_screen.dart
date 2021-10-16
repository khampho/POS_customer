import 'package:flutter/material.dart';
import 'package:flutter_pos/pages/payment_of_day.dart';
import 'package:flutter_pos/pages/payment_of_month.dart';
import 'package:flutter_pos/pages/payment_report.dart';
///  main application widget.
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

/// stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    PaymentOfDay(),
    PaymentOfMonth(),
    PaymentReport(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'ເກັບເງິນມື້',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_month_sharp),
            label: 'ລາຍເດືອນ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'ລາຍງານ',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
