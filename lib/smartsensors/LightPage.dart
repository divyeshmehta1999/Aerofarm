import 'package:aerofarm_firebase/homes_page2.dart';
import 'package:flutter/material.dart';

class LightPage extends StatefulWidget {
  const LightPage({Key? key}) : super(key: key);

  @override
  State<LightPage> createState() => _LightPageState();
}

class _LightPageState extends State<LightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: Text('Light Page',style: TextStyle(fontSize: 75),),
    ));
  }
}
