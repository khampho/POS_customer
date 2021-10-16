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
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(''),
        ),
        body: Center(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      splashColor: Colors.blueGrey,
                      onPressed: () {

                      },
                      child: const Text('SCAN QR CODE')
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      splashColor: Colors.blueGrey,
                      onPressed: () {

                      },
                      child: const Text(' QR CODE')
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
