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
          body: SingleChildScrollView(
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
                              icon: Image.asset("assets/images/scan.png",
                                width: 70,
                                color: Colors.green,
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
                              icon: Image.asset('assets/images/user.png',width: 70,),
                              label: Text(''),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Container(
                      width: 300,
                        padding: EdgeInsets.only(bottom: 25),
                        child: TextField(
                          decoration: InputDecoration(
                              focusedBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.green, width: 2.5),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.lightGreen,
                                  width: 2.0,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.green, width: 2.5),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              label: Text('ລະຫັດ : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),)
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
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(color: Colors.green),
                                )
                            ),


                            child: Text('ອອກບິນ',style: TextStyle(fontWeight: FontWeight.bold))
                        )
                    ),
                  Container(
                    padding: EdgeInsets.only(top: 80),
                    child: Text('ລາຍຮັບມື້ນີ້ : ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.lightGreen, spreadRadius: 3),
                        ],
                      ),
                      height: 60,

                      child: Center(
                        child: Text('ເງິນລວມ : 350,000  ກີບ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
          ),
      ),
    );
  }
}
