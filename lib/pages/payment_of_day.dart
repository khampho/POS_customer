import 'package:flutter/material.dart';
import 'package:flutter_pos/pages/profile.dart';
import 'package:flutter_pos/pages/qr_scan.dart';

import 'bill.dart';
class PaymentOfDay extends StatefulWidget {
  const PaymentOfDay({Key? key}) : super(key: key);

  @override
  _PaymentOfDayState createState() => _PaymentOfDayState();
}
  final price = TextEditingController();
class _PaymentOfDayState extends State<PaymentOfDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ໜ້າຫຼັກ'),
          backgroundColor: Colors.green,
        ),
          body: Card(
             child: SingleChildScrollView(
                child: Column(
                children: [
                  const SizedBox(height: 20,),
                    Container(
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child:Image.asset("assets/images/logo.jpg",
                              width: 100,
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: TextButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                  context, MaterialPageRoute(
                                    builder: (context){
                                      return QrScan();
                                    }
                                ),
                                );
                              },
                              icon: Image.asset("assets/images/qr_scan.jpg",
                                width: 70,

                              ),
                              label: Text(''),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: TextButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context, MaterialPageRoute(
                                     builder: (context){
                                      return Profile();
                                      }
                                  ),
                                );
                              },
                              icon: Image.asset('assets/images/User_icon.png',width: 70,),
                              label: Text(''),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
                    Container(
                      width: 300,
                        padding: EdgeInsets.only(bottom: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.green, width: 2.5,),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                              label: Text('ລະຫັດ',style: TextStyle(fontWeight: FontWeight.bold),)
                          ),
                      ),
                    ),
                    Container(
                      width: 300,
                        child: TextButton(
                            onPressed: (){
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (
                                        context){
                                      return const Bill();
                                    }
                                    )
                                );
                            },
                            style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.white,
                            backgroundColor: Colors.green,
                            textStyle: const TextStyle(fontSize: 20),
                            ),
                            child: Text('ອອກບິນ',style: TextStyle(fontWeight: FontWeight.bold))
                        )
                    ),
                  Container(
                    padding: EdgeInsets.only(top: 80),
                    child: Text('ລາຍຮັບມື້ນີ້ : ',style: TextStyle(fontSize: 30),),
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(top: 20,bottom: 10),
                    child: TextField(
                      enabled: false,
                      controller: price,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.green, width: 2.5),
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          label: Text('      300,000  ກີບ',style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold))
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
