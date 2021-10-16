import 'package:flutter/material.dart';
class RePayment extends StatefulWidget {
  const RePayment({Key? key}) : super(key: key);

  @override
  _RePaymentState createState() => _RePaymentState();
}

class _RePaymentState extends State<RePayment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ລາຍງານ ການຖອກຊຳລະ'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
