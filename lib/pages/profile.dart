
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ຂໍ້ມູນສ່ວນຕົວ'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Center(
                    child: Image.asset('assets/images/User_icon.png',width: 100,),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 40,left: 20,right: 20,),
                      child:TextField(

                        decoration: InputDecoration(
                            enabled: false,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            label: Text('ລະຫັດ : ')
                        ),
                      )
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 15,left: 20,right: 20,),
                      child:TextField(

                        decoration: InputDecoration(
                            enabled: false,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            label: Text('ຕຳແໜ່ງ : ')
                        ),
                      )
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 15,left: 20,right: 20,),
                      child:TextField(

                        decoration: InputDecoration(
                            enabled: false,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            label: Text('ຊື່ : ')
                        ),
                      )
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 15,left: 20,right: 20,),
                      child:TextField(

                        decoration: InputDecoration(
                            enabled: false,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            label: Text('ເບີໂທ : ')
                        ),
                      )
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 15,left: 20,right: 20,bottom: 30),
                      child:TextField(

                        decoration: InputDecoration(
                            enabled: false,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.green, width: 2.5),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            label: Text('ທີ່ຢູ່ : ')
                        ),
                      )
                  ),
                  Align(
                    child: Text('Infrasol co., ltd'),
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
