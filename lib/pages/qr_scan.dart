
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QrScan extends StatefulWidget {
     const QrScan({Key? key}) : super(key: key);

     @override
     _QrScanState createState() => _QrScanState();
}

class _QrScanState extends State<QrScan> {
     @override
     Widget build(BuildContext context) {
          return Scaffold(
               appBar: AppBar(
                    centerTitle: true,
                    title: const Text('Qr Code'),
                    backgroundColor: Colors.green,
               ),
               body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                             Icon(Icons.qr_code,size: 200,)
                        ]
                    ),
               ),
          );
     }
}