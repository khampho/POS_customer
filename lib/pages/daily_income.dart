import 'package:flutter/material.dart';
class DailyIncome extends StatefulWidget {
  const DailyIncome({Key? key}) : super(key: key);

  @override
  _DailyIncomeState createState() => _DailyIncomeState();
}

class _DailyIncomeState extends State<DailyIncome> {
  final List<DataId> _Data = [
    DataId(id: 111, time: '10:30',qty: 2),
    DataId(id: 112, time: '10:30',qty: 555),
    DataId(id: 113,time: '10:30',qty: 7),
    DataId(id: 114, time: '10:30',qty: 12),
    DataId(id: 111, time: '10:30',qty: 2),
    DataId(id: 112, time: '10:30',qty: 555),
    DataId(id: 113,time: '10:30',qty: 7),
    DataId(id: 114, time: '10:30',qty: 12),
    DataId(id: 111, time: '10:30',qty: 2),
    DataId(id: 112, time: '10:30',qty: 555),
    DataId(id: 113,time: '10:30',qty: 7),
    DataId(id: 114, time: '10:30',qty: 12),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ລາຍຮັບປະຈຳວັນ'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body:  SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),

              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 30,top: 20,left: 20,right: 20),
                    child: TextField(
                        decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),

                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            labelText: 'ຈຳນວນເງິນ (ກີບ)',labelStyle: TextStyle(color: Colors.green,fontSize: 20),
                            prefixIcon: Icon(Icons.price_check))
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('ເລກທີ'),

                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text('ເວລາ')
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text('ຈຳນວນ')
                        ],

                      )
                    ],
                  ),
                ListView.separated(
                          shrinkWrap: true,
                          itemCount: _Data.length,
                          itemBuilder: (context, int index) {
                            return Container(
                              child: ListTile(
                                title:Text(
                                    _Data[index].id.toString() + '                         ' + _Data[index].time +'                       '+ _Data[index].qty.toString()
                                ),
                              ),
                            );
                          }, separatorBuilder: (BuildContext context, int index) => Divider(),
                      ),

                ],
              ),
            ),
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
