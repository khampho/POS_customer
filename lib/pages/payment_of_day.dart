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
    return Scaffold(
      appBar: AppBar(
        title: const Text('ໜ້າຫຼັກ'),
        backgroundColor: Colors.green,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(10),
        //   ),
        // ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {               },
                child: const Icon(
                    Icons.logout,
                  color: Colors.red,
                  size: 40,
                ),
              )
          ),
        ],
      ),
      body: Card(
        color: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: SingleChildScrollView(
              child: Column(
              children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const Profile();
                              }));
                            },
                            icon: const Icon(
                                Icons.person,
                              color: Colors.green,
                              size: 80,
                            )
                        ),
                      ),
                      const Spacer(flex: 3,),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Image.asset('assets/images/logo.jpg',
                            height: 80.0,
                            width: 80.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Spacer(flex: 2,),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: IconButton(
                          //padding: const EdgeInsets.only(right: 50,top: 19.0),
                            onPressed: (){
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context){
                                    return const QrScan();
                                  }
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.qr_code_scanner_outlined,
                              color: Colors.green,
                              size: 70,
                            )
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Container(
                    width: 300,
                      padding: const EdgeInsets.only(bottom: 25),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true, // dont forget this line
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.lightGreen,
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            label: const Text('ລະຫັດ : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),)
                        ),
                    ),
                  ),
                  SizedBox(
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
                                  side: const BorderSide(color: Colors.green),
                              )
                          ),

                          child: const Text('ອອກບິນ',style: TextStyle(fontWeight: FontWeight.bold))
                      )
                  ),
                Container(
                  padding: const EdgeInsets.only(top: 80),
                  child: const Text('ລາຍຮັບມື້ນີ້ : ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, spreadRadius: 3),
                      ],
                    ),
                    height: 50,

                    child: const Center(
                      child: Text('ເງິນລວມ : 350,000  ກີບ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                const SizedBox(height: 57,)
              ],
            ),
        ),
      ),
      //backgroundColor: Colors.green,
    );
  }
}
