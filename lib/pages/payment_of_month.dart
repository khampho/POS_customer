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
  ];
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Scaffold(
        appBar: AppBar(
          title: Text('ລາຍເດືອນ'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20,left: 20,right: 20),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [

                  Container(
                    padding: EdgeInsets.only(bottom: 10),
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
                              boxShadow: [
                                BoxShadow(color: Colors.lightGreen, spreadRadius: 3),
                              ],
                            ),
                            child: Center(
                              child: Text('ເງິນລວມ : 350,000  ກີບ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
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


                  Container(
                    width: 300,
                    height: 60,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.lightGreen, spreadRadius: 3),
                      ],
                    ),
                    child: DropdownButtonHideUnderline(
                        child:DropdownButton<String>(
                          value: zone,
                          //icon: const Icon(Icons.arrow_downward),
                           iconSize: 24,
                           elevation: 16,
                          //style: const TextStyle(color: Colors.deepPurple),
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
                              child: Text(value,),
                            );
                          }).toList(),
                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20,top:20),
                   child: Card(
                     child: Column(
                       children: [
                         Text('ລາຍຊື່ແມ່ນຄ້າ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                         Container(
                           padding: EdgeInsets.only(top: 20),
                           child: ListView.separated(
                             shrinkWrap: true,
                             itemCount: _customer.length,
                             itemBuilder: (context, int index) {
                               return Container(
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color: Color(_customer[index].color),
                                   boxShadow: [
                                     BoxShadow(color: Colors.lightGreen, spreadRadius: 2),
                                   ],
                                 ),

                                 child: ListTile(
                                   title:TextButton(
                                     onPressed: (){
                                       print(_customer[index].name);
                                       Navigator.push(context, MaterialPageRoute(
                                                    builder: (context){
                                                      return CustomerIncome();
                                                    })
                                       );
                                     },
                                     child: Text(
                                       _customer[index].name,style: TextStyle(fontSize: 18,color: Colors.white)
                                     ),

                                   ),
                                 ),
                               );
                             }, separatorBuilder: (BuildContext context, int index) => Divider(),

                           ),
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
      ),
    );
  }
}

class Customer {
  var id;
  var name;
  var color;
  Customer({this.id, this.name, this.color});
}

