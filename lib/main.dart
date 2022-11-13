import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'user input',
      home: HomeScreen(),
    );
  }

}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var email, password, phone;
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello User"),
      ),
      body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    prefixIcon: Icon(Icons.email, color: Colors.blueAccent,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 3
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5
                      ),
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
                Container( height: 10,),
                TextField(
                  controller: password,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    prefixIcon: const Icon(Icons.lock),
                    focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 3
                          )
                      ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      )
                    )
                  ),
                ),
                Container(height: 10,),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: phone,
                  decoration: InputDecoration(
                      hintText: 'Phone Number',
                      prefixIcon: const Icon(Icons.phone),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 3
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 1.5,
                          )
                      )
                  ),
                ),
                Container(height: 10,),
                ElevatedButton(onPressed: () {
                  String userEmail = email.text.toString();
                  String userPassword = password.text.toString();
                  String userPhone = phone.text.toString();
                  print('Email: $userEmail, Pass: $userPassword, Phone: $userPhone');
                }, child: const Text('Login'))
              ],
            ),
          ),
      ),
    );
  }
}