import 'package:flutter/material.dart';

import 'home_screen.dart';

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  var mail = "admin123@gmail.com";
  var pass = "123";
  void showData() {

    print('ok');
  }
  void showError() {

    print(email.text);
  }
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Container(
        color: const Color(0xFFF1F8E9),// Selects a mid-range green.
      padding: const EdgeInsets.only(left: 35),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: SingleChildScrollView(
                  child:Column(
                    children: [
                      const Icon(Icons.person,size: 150,color: Colors.green,),
                        Container(
                          width: 300,
                          padding: const EdgeInsets.only(top: 30),
                          child:  TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'ກະລຸນາປ້ອນອີເມວ!';
                                }else if(value != mail){
                                  return 'ອີເມວບໍ່ຖືກຕ້ອງ!';
                                }
                                return null;
                              },
                              controller: email,
                              keyboardType: TextInputType.emailAddress,
                              obscureText: false,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 2,
                                    ),
                                  ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.lightGreen,
                                    width: 2.0,
                                  ),
                                 ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.green, width: 2.5),
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                  labelText: 'ອີເມລ',labelStyle: const TextStyle(color: Colors.green),
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Colors.green,
                                    size: 30.0,
                                  ),)
                          ),
                        ),
                      const SizedBox(height: 10),
                        SizedBox(
                          width: 300,
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'ກະລຸນາປ້ອນລະຫັດຜ່ານ!';
                                }else if(value != pass){
                                  return 'ລະຫັດຜ່ານບໍ່ຖືກຕ້ອງ!';
                                }
                                return null;
                              },
                              controller: password,
                              keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.green,
                                      width: 2
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.lightGreen,
                                      width: 2.0,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.green, width: 2.5),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'ລະຫັດຜ່ານ',labelStyle: const TextStyle(color: Colors.green),
                                  prefixIcon: const Icon(
                                    Icons.password_outlined,
                                    color: Colors.green,
                                    size: 30.0,
                                  ),)
                        ),
                      ),
                         Container(
                           width: 300,
                           padding: const EdgeInsets.only(top: 30),
                           child: ElevatedButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.white,
                              backgroundColor: Colors.lightGreen,
                              textStyle: const TextStyle(fontSize: 20,),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: const BorderSide(color: Colors.lightGreen)
                                )
                            ),
                            onPressed: () {

                               if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('')),

                                );
                                if( mail == email.text && pass == password.text){
                                  Navigator.push(context,MaterialPageRoute(
                                      builder: (context){
                                        return const HomeScreen();
                                      }
                                  )
                                  );
                                }else{
                                  print('error');
                                }

                              }else{

                                 print('email && password is null');

                              }
                            },
                            child: const Text('ເຂົ້າສູ່ລະບົບ'),
                        ),
                         ),
                    ],
                  ),
                ),
               ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("ຊື່ຕະຫຼາດ",style: TextStyle(fontSize: 15),),
                )
          ]
        )
      ),
    );
  }
}
