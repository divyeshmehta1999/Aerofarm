import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class LightPage extends StatefulWidget {
  const LightPage({Key? key}) : super(key: key);

  @override
  State<LightPage> createState() => _LightPageState();
}

class _LightPageState extends State<LightPage> {
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref().child('Rack_No');

  Widget listItem({required Map Rack_No}){
    return Container(
      height: 50,
      width: 20,
      decoration: BoxDecoration(color: Colors.grey[400],borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(Rack_No['Rack No']),
                Text(Rack_No['Light'])
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        title: Text('Light'),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: FirebaseAnimatedList(
              query: ref,
              itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index){
                Map rackNo = snapshot.value as Map;
                rackNo['key'] = snapshot.key;
                return listItem(Rack_No: rackNo);

              }
          ),
        ),
      ),
    );
  }
}