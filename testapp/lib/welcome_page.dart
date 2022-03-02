import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name, price, interest;

  double wh = 0, total = 0;
  WelcomePage(
    {Key? key,
    required this.name,
    required this.price,
    required this.interest,})
    :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าสรุป'),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('สินค้า : '),
                    subtitle: Text(' $name'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('ราคา : '),
                    subtitle: Text(' $price'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('งวดที่เลือก : '),
                    subtitle: Text(' $interest'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('จำที่ต้องชำระต่องวด : '),
                    subtitle: Text(' ' +
                    numberAdd3(double.parse(price),double.parse(interest)).toString()),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('สรุป : '),
                    subtitle: Text('ดอกเบี้ยรวม' +
                              numberAdd(double.parse(price),double.parse(interest))
                              .toString()+' ราคาที่ต้องชำระรวมดอกเบี้ย'+ numberAdd2(double.parse(price),double.parse(interest)).toString()

                    ),
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
  double numberAdd(double w, double h) {
    if(h == 6) {
      total = w * 0;
    }
    else if(h == 10 ) {
      total = w * (1/100);
    }
    else if(h == 24) {
      total = w*(2/100);
    }
    else{
      total = w * (10/100);
    }
    return total * h;
  }

  double numberAdd2(double w, double h) {
    if(h == 6) {
      total = w * 0;
    }
    else if(h == 10 ) {
      total = w * (1/100);
    }
    else if(h == 24) {
      total = w*(2/100);
    }
    else{
      total = w * (10/100);
    }
    return (total * h) + w;
  }
  double numberAdd3(double w, double h) {
    if(h == 6) {
      total = w * 0;
    }
    else if(h == 10 ) {
      total = w * (1/100);
    }
    else if(h == 24) {
      total = w*(2/100);
    }
    else{
      total = w * (10/100);
    }
    return ((total * h) + w)/h;
  }
}