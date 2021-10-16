import 'package:flutter/material.dart';
class CustomerIncome extends StatefulWidget {
  const CustomerIncome({Key? key}) : super(key: key);

  @override
  _CustomerIncomeState createState() => _CustomerIncomeState();
}

class _CustomerIncomeState extends State<CustomerIncome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ໃບເກັບເງິນ'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        padding: EdgeInsets.only(top: 20,bottom: 10),
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.green, width: 2.5),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                              label: Text('200,000 ກີບ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            ////
                          },
                          icon: Image.asset('assets/images/printer.png',width: 50,),
                          label: Text(''),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/logo.jpg',width: 90,),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(left: 30),
                              child: Text('ຕະຫຼາດ ໂພນຕ້ອງ'),
                            ),
                          ],
                        ),
                        Container(

                          child: Text('ໃບເກັບເງິນ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ),
                        Row(
                          children: [
                            Container(
                              child:Text('ຜູ້ຈ່າຍເງິນ : ນາງ ສົມສີ ',style: TextStyle(fontWeight: FontWeight.bold),),

                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(left: 30,bottom: 10),
                              child: Text('ເດືອນ : 04/2021'),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text('ວັນທີ : 22/02/2022'),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(left: 30,bottom: 10),
                              child: Text('ເລກທີ່ : 203'),
                            ),
                          ],
                        ),
                        Card(
                          child: DataTable(
                            columns: const [
                              DataColumn(label: Text(
                                  'ລຳດັບ',
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                              )),
                              DataColumn(label: Text(
                                  'ລາຍການ',
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                              )),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text('1')),
                                DataCell(Text('ສະຖານທີ່')),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(Text('ອະນາໄມ')),
                              ]),
                            ],
                          ),
                        ),

                        Container(
                          width: 300,
                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                          child: TextField(
                            enabled: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.green, width: 2.5),
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                label: const Text('  ເງິນລວມ :            200,000 ກີບ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
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
      ),
    );
  }
}
