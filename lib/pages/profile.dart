
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
        body: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child:  Center(
                    child: Image.asset('assets/images/user_icon.png',width: 100,),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green,width: 2),
                  ),
                  child: const Center(
                    child: Text('ລະຫັດ : 000122',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 60,

                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green,width: 2),
                  ),
                  child: const Center(
                    child: Text('ຕຳແໜ່ງ : ພະນັກງານເກັບເງິນ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green,width: 2),
                  ),
                  child: const Center(
                    child: Text('ຊື່ : ທ້າວ ຈັນທອງ ນາມສົມໝຸດ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 60,

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green,width: 2),
                  ),
                  child: const Center(
                    child: Text('ເບີໂທ : 020 979797',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green,width: 2),
                  ),
                  child: const Center(
                    child: Text('ທີ່ຢູ່ : ບ້ານ ທົ່ງປ່ງ ,ມ.ໄຊຖານີ, ນະຄອນຫຼວງ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ),
                ),
               Container(
                 padding: EdgeInsets.only(top: 130,bottom: 20),
                 child:  const Align(
                   child: Text('Infrasol co., ltd',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
