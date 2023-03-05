import 'package:aerofarm_firebase/homes_page2.dart';
import 'package:aerofarm_firebase/smartsensors/Sensors.dart';
import 'package:flutter/material.dart';

import 'LightPage.dart';

class TemperaturePage extends StatelessWidget {
  const TemperaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('temperature page',style: TextStyle(fontSize: 75),)),

    );
  }
}
