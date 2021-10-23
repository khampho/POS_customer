import 'package:flutter/material.dart';
class DailyIncome extends StatefulWidget {
  const DailyIncome({Key? key}) : super(key: key);

  @override
  _DailyIncomeState createState() => _DailyIncomeState();
}

class _DailyIncomeState extends State<DailyIncome> {
  final List<DataId> _Data = [
    DataId(id: 111, time: '10:30',qty: 2000),
    DataId(id: 112, time: '10:30',qty: 5000),
    DataId(id: 113, time: '10:30',qty: 7000),
    DataId(id: 114, time: '10:30',qty: 1200),
    DataId(id: 111, time: '10:30',qty: 2000),
    DataId(id: 112, time: '10:30',qty: 5000),
    DataId(id: 113, time: '10:30',qty: 7000),
    DataId(id: 114, time: '10:30',qty: 1000),
    DataId(id: 111, time: '10:30',qty: 2000),
    DataId(id: 112, time: '10:30',qty: 5000),
    DataId(id: 113, time: '10:30',qty: 7000),
    DataId(id: 114, time: '10:30',qty: 1000),
    DataId(id: 111, time: '10:30',qty: 2000),
    DataId(id: 112, time: '10:30',qty: 5000),
    DataId(id: 113, time: '10:30',qty: 7000),
    DataId(id: 114, time: '10:30',qty: 1200),
    DataId(id: 111, time: '10:30',qty: 2000),
    DataId(id: 112, time: '10:30',qty: 5000),
    DataId(id: 113, time: '10:30',qty: 7000),
    DataId(id: 114, time: '10:30',qty: 1000),
    DataId(id: 111, time: '10:30',qty: 2000),
    DataId(id: 112, time: '10:30',qty: 5000),
    DataId(id: 113, time: '10:30',qty: 7000),
    DataId(id: 114, time: '11:30',qty: 1000),
    DataId(id: 111, time: '11:30',qty: 2000),
    DataId(id: 112, time: '11:30',qty: 5000),
    DataId(id: 113, time: '12:30',qty: 7000),
    DataId(id: 114, time: '12:30',qty: 1200),
    DataId(id: 111, time: '12:30',qty: 2000),
    DataId(id: 112, time: '15:30',qty: 5000),
    DataId(id: 113, time: '15:30',qty: 7000),
    DataId(id: 114, time: '16:30',qty: 1000),
    DataId(id: 111, time: '17:30',qty: 2000),
    DataId(id: 112, time: '17:30',qty: 5000),
    DataId(id: 113, time: '18:30',qty: 7000),
    DataId(id: 118, time: '19:30',qty: 1000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ລາຍຮັບປະຈຳວັນ'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:  Container(
            padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: 300,
                    padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                    child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),

                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            labelText: 'ເງິນລວມ : 200,000 ກີບ',labelStyle: const TextStyle(color: Colors.green,fontSize: 20),
                            prefixIcon: const Icon(Icons.price_check))
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 20),
                      width: 300,
                      child: Row(
                        children: [
                          Column(
                            children: const [
                              Text('ເລກທີ',style: TextStyle(fontSize: 20),),

                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: const [
                              Text('ເວລາ',style: TextStyle(fontSize: 20))
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: const [
                              Text('ຈຳນວນ',style: TextStyle(fontSize: 20))
                            ],

                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 520,
                    width: 300,
                    //padding: EdgeInsets.only(top: 20),
                        child: ListView.separated(
                              shrinkWrap: true,
                              itemCount: _Data.length,
                              itemBuilder: (context, int index) {
                                return SingleChildScrollView(

                                  child:Row(
                                    children: [
                                      Text(_Data[index].id.toString() ,style: const TextStyle(fontSize: 15),),
                                      const Spacer(),
                                      Text(_Data[index].time,style: const TextStyle(fontSize: 15),),
                                      const Spacer(),
                                      Text(_Data[index].qty.toString()+ " ກີບ",style: TextStyle(fontSize: 15),)

                                    ],
                                  ),
                                );
                              }, separatorBuilder: (BuildContext context, int index) => Divider(),
                          ),
                  ),
                ],
              ),
            ),
      );
  }
}

class DataId {
  final int id;
  var time;
  final int qty;
  DataId({required this.id, this.time, required this.qty});
}
