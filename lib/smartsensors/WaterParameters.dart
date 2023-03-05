import 'package:aerofarm_firebase/homes_page2.dart';
import 'package:flutter/material.dart';

class WaterParametersPage extends StatefulWidget {
  const WaterParametersPage({Key? key}) : super(key: key);

  @override
  State<WaterParametersPage> createState() => _WaterParametersPage();
}

class _WaterParametersPage extends State<WaterParametersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Center(child: Text('waterparameter change',style: TextStyle(fontSize: 75),),
        ));
  }
}
