import 'package:flutter/material.dart';
import 'package:modal_class_h/screen/Modal_class.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    DataClass d1 = ModalRoute.of(context)!.settings.arguments as DataClass;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          Center(child: Text("${d1.country}",style: TextStyle(color: Colors.pinkAccent),)),
          Text("${d1.poplutation}",style: TextStyle(fontSize: 20),),
          Text("${d1.fl}",style: TextStyle(fontSize: 20),)

        ],
      ),
    );
  }
}
