import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Customer_income.dart';
class PaymentOfMonth extends StatefulWidget {
  const PaymentOfMonth({Key? key}) : super(key: key);

  @override
  _PaymentOfMonthState createState() => _PaymentOfMonthState();
}

class _PaymentOfMonthState extends State<PaymentOfMonth> {
  String zone = 'Zone A';
  ///
  final List<Customer> _customer = [
    Customer(id: 1, name: "ຮ້ານ ນາງວຽງແກ້ວ",color: 0xff123456),
    Customer(id: 2, name: "ຮ້ານ ນາງພູວັນ",color: 0xff123456),
    Customer(id: 3, name: "ຮ້ານ ນາງສົມຈິດ",color: 0xFFB74093),
    Customer(id: 4, name: "ຮ້ານ ນາງແສງຈັນ",color: 0xff123456),
    Customer(id: 1, name: "ຮ້ານ ນາງວຽງແກ້ວ",color: 0xff123456),
    Customer(id: 2, name: "ຮ້ານ ນາງພູວັນ",color: 0xff123456),
    Customer(id: 3, name: "ຮ້ານ ນາງສົມຈິດ",color: 0xFFB74093),
    Customer(id: 4, name: "ຮ້ານ ນາງແສງຈັນ",color: 0xff123456),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ລາຍເດືອນ'),
        backgroundColor: Colors.green,
      ),
      body: Card(
        color: Colors.white60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Container(
                      width: 220,
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
                  Container(
                    padding: const EdgeInsets.only(left: 0,bottom: 20),
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
                child: Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.lightGreen, spreadRadius: 3),
                    ],
                  ),
                  child: DropdownButtonHideUnderline(
                      child:DropdownButton<String>(
                        value: zone,
                        icon: const Icon(Icons.arrow_downward,color: Colors.green,),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.green),
                        underline: Container(
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newZone) {
                          setState(() {
                            zone = newZone!;
                          });
                        },
                        items: <String>['Zone A', 'Zone B', 'Zone C', 'Zone D']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: TextStyle(fontSize: 20),),
                          );
                        }).toList(),
                      )
                  ),
                )
            ),
            const SizedBox(height: 3,),
            SizedBox(
              height: 473,
              width: 300,
                 child: Container(
                   padding: const EdgeInsets.only(top: 20,),
                   child: ListView.separated(
                     shrinkWrap: true,
                     itemCount: _customer.length,
                     itemBuilder: (context, int index) {
                       return SingleChildScrollView(
                           child: Container(
                             height: 50,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                 color: Color(_customer[index].color),
                                 // boxShadow: const [
                                 //   BoxShadow(color: Colors.lightGreen, spreadRadius: 2),
                                 // ],
                               ),

                           child: ListTile(
                             title:TextButton.icon(
                               style: TextButton.styleFrom(
                                   padding: EdgeInsets.zero,
                                   minimumSize: Size(50, 30),
                                   alignment: Alignment.centerLeft,
                               ),
                               onPressed: (){
                                 //print(_customer[index].name);
                                 Navigator.push(context, MaterialPageRoute(
                                              builder: (context){
                                                return const CustomerIncome();
                                              })
                                 );
                               },
                               //icon: const Icon(Icons.view_comfy_outlined,color: Colors.green,),

                               label: Text(
                                 _customer[index].name,style: const TextStyle(fontSize: 18,color: Colors.white)
                               ),
                               icon: const Icon(Icons.arrow_right,size: 40,color: Colors.white,),
                             ),
                           ),
                        ),
                       );
                     }, separatorBuilder: (BuildContext context, int index) => const Divider(),
                   ),
                 ),
               ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}

class Customer {
  var id;
  var name;
  var color;
  Customer({this.id, this.name, this.color});
}

