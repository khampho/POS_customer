

import 'package:flutter/material.dart';
class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  final String _date = 'ວັນທີ: 22/10/2021';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ໃບບິນ'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(color: Colors.lightGreen, spreadRadius: 3),
                          ],
                        ),
                        child: const Center(
                          child: Text('ເງິນລວມ : 350,000  ກີບ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30),
                      child: TextButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          ////
                        },
                        icon: Image.asset('assets/images/printer.png',width: 50,),
                        label: const Text(''),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                       Row(
                        children: [
                          Image.asset('assets/images/logo.jpg',width: 90,),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.only(left: 30),
                            child: const Text('ຕະຫຼາດ ໂພນຕ້ອງ'),
                          ),
                        ],
                      ),
                      const Text('ໃບບິນຕະຫຼາດ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text(_date),
                          Spacer(),
                          Container(
                            padding: const EdgeInsets.only(left: 30,bottom: 10),
                            child: const Text('ເລກທີ່ : 203'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(color: Colors.lightGreen, spreadRadius: 3),
                            ],
                          ),
                          height: 60,

                          child: const Center(
                            child: Text('ເງິນລວມ : 350,000  ກີບ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 200),
                        child: const Text('ຜູ້ເກັບເງິນ : '),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 150),
                        child: const Text('ທ້າວ ຈັນທອງ ນາມສົມໝຸດ'),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 20,top: 40),
                        child: const Text('ຫ້ອງການຕະຫຼາດ :  030 9797977'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
