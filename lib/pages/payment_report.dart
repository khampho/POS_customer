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
    return Scaffold(
      appBar: AppBar(
        title: const Text('ລາຍງານ'),

        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
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
                                  return const DailyIncome();
                                }
                              ),
                            );
                          },
                          icon: Image.asset('assets/images/price_icon.png',width: 70,),
                          label: const Text('ລາຍຮັບປະຈຳວັນ                         ',style: TextStyle(fontSize: 20,color: Colors.green),),
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
                                return const MonthlyIncome();
                              }
                          ),
                          );
                        },
                        icon: Image.asset('assets/images/price_icon.png',width: 70,),
                        label: const Text('ລາຍຮັບປະຈຳເດືອນ                     ',style: TextStyle(fontSize: 20, color: Colors.green),),
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
                                return const OutStanding();
                              }
                          ),
                          );
                        },
                        icon: Image.asset('assets/images/price_icon.png',width: 70,),
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
                                return const RePayment();
                              }
                          ),
                          );
                        },
                        icon: Image.asset('assets/images/price_icon.png',width: 70,),
                        label: const Text('ຮ້ານຄ້າທີ່ຄ້າງຊຳລະ                       ',style: TextStyle(fontSize: 20, color: Colors.green),),
                      ),
                    ),
              ],
            ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}