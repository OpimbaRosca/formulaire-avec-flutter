

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwords=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [ const
          Row(
            children: [
              Icon(Icons.arrow_back, size: 25,),
            ],
          ),
         const Center(
            child: Text("Log in", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
             decoration: InputDecoration(
              labelText: "Your Email",
              hintText: "Email",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
             obscureText: passwords,
             decoration: InputDecoration(
              hintText: "Password",
              suffixIcon: GestureDetector(
                onTap: (){
                  passwords=!passwords;
                },
                child: Icon(Icons.visibility))
             ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Forgot password ?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
              
            ],
          ),
          const SizedBox(height: 20,),
          Container(
                height: 50,
                width: 400,
               decoration: BoxDecoration(
                 color: Color.fromARGB(197, 247, 101, 4),
                 borderRadius: BorderRadius.circular(30),
               ),
               child: const Center(child: Text("Log in", style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 170,
                    height: 1,
                    color: Colors.grey[500],
                  ),
                  const SizedBox(width: 10,),
                 const  Text("or"),
                const  SizedBox(width: 10,),
                  Container(
                    width: 170,
                    height: 1,
                    color: Colors.grey[500],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
            height: 60,
            width: 400,
            child: TextButton.icon(
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(10),),
                backgroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              onPressed: (){}, icon: Icon(Icons.apple,color: Colors.white,), label: Text("continue with apple", style: TextStyle(fontSize: 20, color: Colors.white),)),
          ),
               const SizedBox(height: 15,),
              Container(
                height: 50,
                width: 400,
               decoration: BoxDecoration(
                 color: Color.fromARGB(255, 67, 56, 223),
                 borderRadius: BorderRadius.circular(30),
               ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("f", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(width: 10,),
                  Text("coontinue with Facebook", style: TextStyle(fontSize: 20, color: Colors.white),)
                ],
               )
              ),
        ],
      ),
    );
  }
}
