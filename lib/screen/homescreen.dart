import 'package:flutter/material.dart';
import 'package:modal_class_h/screen/Modal_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List countryList = ["india", "Nepal", "China", "Pakishan", "Usa"];
  List populationList = ["1", "3", "2", "4", "5"];
  List flag = [
    "🇮🇳 ",
    "🇷🇺 ",
    "🇺🇸 ",
    "🇯🇵 ",
    "🇨🇳",
    "🇬🇧 ",
    "🇮🇪 ",
    "🇨🇦 ",
    "🇮🇱 ",
    "🇳🇵 ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: countryList
              .asMap()
              .entries
              .map((e) => InkWell(
              onTap: () {
                DataClass d1 = DataClass(country: countryList[e.key],poplutation:populationList[e.key],fl: flag[e.key]);
                Navigator.pushNamed(context, 'ui',arguments: d1);
              },
              child: list(countryList[e.key],flag[e.key])))
              .toList(),
        ),
      ),
    );
  }

  Widget list(String country,String flag) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.blue,
      child: Center(child: Text("$country $flag",style: TextStyle(color: Colors.red,fontSize: 20),)),
    );
  }
}
