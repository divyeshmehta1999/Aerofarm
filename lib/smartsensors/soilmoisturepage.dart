import 'package:aerofarm_firebase/homes_page2.dart';
import 'package:flutter/material.dart';

class SoilMoisturePage extends StatefulWidget {
  const SoilMoisturePage({Key? key}) : super(key: key);

  @override
  State<SoilMoisturePage> createState() => _SoilMoisturePage();
}

class _SoilMoisturePage extends State<SoilMoisturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Center(child: Text('SoilMoisture Page',style: TextStyle(fontSize: 70),),
        ));
  }
}
