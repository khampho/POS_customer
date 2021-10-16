import 'package:flutter/material.dart';
class MonthlyIncome extends StatefulWidget {
  const MonthlyIncome({Key? key}) : super(key: key);

  @override
  _MonthlyIncomeState createState() => _MonthlyIncomeState();
}

class _MonthlyIncomeState extends State<MonthlyIncome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ລາຍຮັບປະຈຳເດືອນ'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
