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
  @override
  void showData() {

    print('ok');
  }
  @override
  void showError() {

    print(email.text);
  }
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Container(
      padding: EdgeInsets.only(left: 35),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: SingleChildScrollView(
                  child:Column(
                    children: [
                      Container(
                        child:Image.asset("assets/images/manBuying.jpg",
                          width: 250,
                          height: 200,
                        ),
                      ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.only(top: 30),
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
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                      width: 2,
                                    ),
                                  ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.lightGreen,
                                    width: 2.0,
                                  ),
                                 ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.green, width: 2.5),
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                  labelText: 'ອີເມລ',labelStyle: TextStyle(color: Colors.green),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.green,
                                    size: 30.0,
                                  ),)
                          ),
                        ),
                      const SizedBox(height: 10),
                        Container(
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
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                      width: 2
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.lightGreen,
                                      width: 2.0,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.green, width: 2.5),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'ລະຫັດຜ່ານ',labelStyle: TextStyle(color: Colors.green),
                                  prefixIcon: Icon(
                                    Icons.password_outlined,
                                    color: Colors.green,
                                    size: 30.0,
                                  ),)
                        ),
                      ),
                         Container(
                           width: 300,
                           padding: EdgeInsets.only(top: 30),
                           child: ElevatedButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(16.0),
                              primary: Colors.white,
                              backgroundColor: Colors.lightGreen,
                              textStyle: const TextStyle(fontSize: 20,),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(color: Colors.lightGreen)
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
                                        return HomeScreen();
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("ຊື່ຕະຫຼາດ",style: TextStyle(fontSize: 15),),
                )
          ]
        )
      ),
    );
  }
}
