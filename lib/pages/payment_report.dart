import 'package:flutter/material.dart';
import 'package:flutter_pos/pages/repayment.dart';
import 'daily_income.dart';
import 'monthly_income.dart';
import 'outstanding.dart';
class PaymentReport extends StatefulWidget {
  const PaymentReport({Key? key}) : super(key: key);

  @override
  _PaymentReportState createState() => _PaymentReportState();
}

class _PaymentReportState extends State<PaymentReport> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text('ລາຍງານ'),

            backgroundColor: Colors.green,
          ),
          body: Container(
            padding: EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
                child: Column(
                  children: [
                       Card(

                            child: TextButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                  context, MaterialPageRoute(
                                    builder: (context){
                                      return DailyIncome();
                                    }
                                  ),
                                );
                              },
                              icon: Image.asset('assets/images/price_icon.jpg',width: 70,),
                              label: Text('ລາຍຮັບປະຈຳວັນ                         ',style: TextStyle(fontSize: 20,color: Colors.green),),
                            ),
                          ),

                          Card(
                          //padding: EdgeInsets.only(top: 10,left: 15),
                          child: TextButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context){
                                    return MonthlyIncome();
                                  }
                              ),
                              );
                            },
                            icon: Image.asset('assets/images/price_icon.jpg',width: 70,),
                            label: Text('ລາຍຮັບປະຈຳເດືອນ                     ',style: TextStyle(fontSize: 20, color: Colors.green),),
                          ),
                        ),
                        Card(
                          //padding: EdgeInsets.only(top: 10,left: 15),
                          child: TextButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context){
                                    return OutStanding();
                                  }
                              ),
                              );
                            },
                            icon: Image.asset('assets/images/price_icon.jpg',width: 70,),
                            label: const Text('ຖອກຊຳລະ                                  ',style: TextStyle(fontSize: 20, color: Colors.green),),
                          ),
                        ),
                         Card(
                          //padding: EdgeInsets.only(top: 10,left: 15),
                          child: TextButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context){
                                    return RePayment();
                                  }
                              ),
                              );
                            },
                            icon: Image.asset('assets/images/price_icon.jpg',width: 70,),
                            label: const Text('ຮ້ານຄ້າທີ່ຄ້າງຊຳລະ                                            ',style: TextStyle(fontSize: 20, color: Colors.green),),
                          ),
                        ),
                  ],
                ),
            ),
          ),
        ),
    );
  }
}