import 'package:flutter/material.dart';
class CustomerIncome extends StatefulWidget {
  const CustomerIncome({Key? key}) : super(key: key);

  @override
  _CustomerIncomeState createState() => _CustomerIncomeState();
}

class _CustomerIncomeState extends State<CustomerIncome> {
  final List<Data> _data = [
    Data(no: 1,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 2,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 3,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 4,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),
    Data(no: 5,lists: 'ຂີ້ເຫຍື້ອ',service: 30000),

  ];
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
            padding: EdgeInsets.all(10),
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
                          boxShadow: [
                            BoxShadow(color: Colors.grey, spreadRadius: 3),
                          ],
                        ),
                        child: Center(
                          child: Text('ເງິນລວມ : 350,000  ກີບ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                      Container(
                        padding: EdgeInsets.only(left: 30,bottom: 20),
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
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
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
                            const Spacer(),
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
                        Row(
                          children: const [
                            Text('ລຳດັບ'),
                            Spacer(),
                            Text('ລາຍການ'),
                            Spacer(),
                            Text('ຄ່າບໍລິການ')
                          ],
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: _data.length,
                          itemBuilder: (context, int index) {
                            return SingleChildScrollView(

                              child:Row(
                                children: [
                                  Text(_data[index].no.toString() ,style: const TextStyle(fontSize: 15),),
                                  const Spacer(),
                                  Text(_data[index].lists,style: const TextStyle(fontSize: 15),),
                                  const Spacer(),
                                  Text(_data[index].service.toString()+ " ກີບ",style: TextStyle(fontSize: 15),)

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
                              boxShadow: [
                                BoxShadow(color: Colors.grey, spreadRadius: 3),
                              ],
                            ),
                            height: 60,

                            child: Center(
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