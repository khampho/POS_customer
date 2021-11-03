import 'package:flutter/material.dart';
class BillMarket extends StatefulWidget {
  const BillMarket({Key? key}) : super(key: key);

  @override
  _BillMarketState createState() => _BillMarketState();
}

class _BillMarketState extends State<BillMarket> {
  final List<Data> _data = [
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
        title: const Text('ໃບເກັບເງິນ'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {               },
                child: const Icon(
                  Icons.print,
                  color: Colors.black,
                  size: 40,
                ),
              )
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
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
                      const Text('ໃບເກັບເງິນ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                              Text('ຜູ້ຈ່າຍເງິນ : ນາງ ສົມສີ ',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('ເດືອນ : 04/2021'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('ວັນທີ : 22/02/2022'),
                          Text('ເລກທີ່ : 203'),
                        ],
                      ),
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Table(
                          border: TableBorder.all(color: Colors.grey,width: 0.2),
                          children: const [
                            TableRow(children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('ລຳດັບ')),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('ລາຍການ')),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(child: Text('ຄ່າບໍລິການ')),
                              ),
                            ]),
                          ],
                        ),
                      ),
                      ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          //physics: const AlwaysScrollableScrollPhysics(),
                          // physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: _data.length,
                          itemBuilder: (context, int index) {
                            return _buil(index);
                          }
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
                          height: 40,

                          child: const Center(
                            child: Text('ເງິນລວມ : 400,000  ກີບ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
  Widget _buil(int index){
    return Center(
      child: Table(
        border: TableBorder.all(color: Colors.grey,width: 0.2),
        children: [
          TableRow(children: [
            Center(
              child: Text(_data[index].no.toString() ,style: const TextStyle(fontSize: 15),),
            ),
            Center(child: Text(_data[index].lists,style: const TextStyle(fontSize: 15),)),
            Center(child: Text(_data[index].service.toString(),style: const TextStyle(fontSize: 15),))
          ]),
        ],
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