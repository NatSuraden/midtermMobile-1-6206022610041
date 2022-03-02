import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _price = TextEditingController();
  TextEditingController _interest = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shop_62060226100414'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: 
                Image.asset(
                "assets/images/Logo.jpg",
                scale: 2,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: 
                Image.asset(
                "assets/images/notebook.jpg",
                scale: 10,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: 
                Image.asset(
                "assets/images/Tablet.jpg",
                scale: 10,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: 
                Image.asset(
                "assets/images/pc.jpg",
                scale: 10,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'ชื่อสินค้า'),
                autofocus: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _price,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ราคา'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _interest,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'จำนวนงวด'),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(
                      name: _name.text,
                      price: _price.text,
                      interest: _interest.text,
                    ),
                  ),
                );
              },
              child: Text('Go Next Page'),
            )
          ],
        ),
      ),
    );
  }
}