import 'package:flutter/material.dart';
class OutStanding extends StatefulWidget {
  const OutStanding({Key? key}) : super(key: key);

  @override
  _OutStandingState createState() => _OutStandingState();
}

class _OutStandingState extends State<OutStanding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ຮາ້ນຄ້າ ທີ່ຄ້າງຊຳລະ'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
