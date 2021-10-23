import 'package:flutter/material.dart';
class RePayment extends StatefulWidget {
  const RePayment({Key? key}) : super(key: key);

  @override
  _RePaymentState createState() => _RePaymentState();
}

class _RePaymentState extends State<RePayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ລາຍງານ ການຖອກຊຳລະ'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: 60,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green)
        ),
        child: const Center(
          child: Text('Content'),
        ),
      ),
    );
  }
}
