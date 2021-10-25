

import 'package:flutter/material.dart';
class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  _BillState createState() => _BillState();
}



class _BillState extends State<Bill> {
  final String _date = 'ວັນທີ: 22/10/2021';

  final List<Data> _data = [
    Data(no: 1,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 2,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 3,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 4,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 5,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 1,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 2,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 3,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 4,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 5,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 1,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 2,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 3,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 4,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 5,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ໃບບິນ'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [ Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, spreadRadius: 3),
                        ],
                      ),
                      child: const Center(
                        child: Text('ເງິນລວມ : 350,000  ກີບ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                    Container(
                      padding: const EdgeInsets.only(left: 30,bottom: 20),
                      child: IconButton(
                          onPressed: (){},
                          icon: const Icon(
                            Icons.print,
                            color: Colors.green,
                            size: 60,
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
              child: SingleChildScrollView(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(

                      children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/logo.jpg',width: 90,),

                            const Text('ຕະຫຼາດ ໂພນຕ້ອງ'),

                          ],
                        ),
                        const Text('ໃບບິນຕະຫຼາດ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_date),

                            const Text('ເລກທີ່ : 203'),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('ລຳດັບ'),
                              Text('ລາຍການ'),
                              Text('ຄ່າບໍລິການ')
                            ],
                          ),
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: _data.length,
                          itemBuilder: (context, int index) {
                            return Center(
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(_data[index].no.toString() ,style: const TextStyle(fontSize: 15),),

                                  Text(_data[index].lists,style: const TextStyle(fontSize: 15),),

                                  Text(_data[index].service.toString(),style: TextStyle(fontSize: 15),)

                                ],
                              ),
                            );
                          }, separatorBuilder: (BuildContext context, int index) => Divider(),
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
                ),
              )
              )
            ],
          ),
        ),
    );
  }
}

class Data {
  final int no;
  var lists;
  final int service;
  Data( {required this.no, this.lists,required this.service});
}

