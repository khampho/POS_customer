
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ຂໍ້ມູນສ່ວນຕົວ'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                child:  Center(
                  child: Image.asset('assets/images/user_icon.png',width: 100,),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
               width: 330,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 2),
                ),
                child: const Center(
                  child: Text('ລະຫັດ : 000122',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 2),
                ),
                child: const Center(
                  child: Text('ຕຳແໜ່ງ : ພະນັກງານເກັບເງິນ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 2),
                ),
                child: const Center(
                  child: Text('ຊື່ : ທ້າວ ຈັນທອງ ນາມສົມໝຸດ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 2),
                ),
                child: const Center(
                  child: Text('ເບີໂທ : 020 979797',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 2),
                ),
                child: const Center(
                  child: Text('ທີ່ຢູ່ : ບ້ານ ທົ່ງປ່ງ ,ມ.ໄຊຖານີ, ນະຄອນຫຼວງ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                ),
              ),
             Container(
               padding: const EdgeInsets.only(top: 130,bottom: 20),
               child:  const Align(
                 child: Text('Infrasol co., ltd',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
               ),
             )
            ],
          ),
        ),
      ),
      //backgroundColor: Colors.green,
    );
  }
}
