import 'dart:math';

import 'package:aerofarm_firebase/smartsensors/TemperaturePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LightPage.dart';

class Sensors extends StatelessWidget {

  final String smartSensorName;
  final String iconPath;
  final bool powerOn;
  void Function (bool)? onChanged;

  Sensors({super.key,
    required this.smartSensorName,
    required this.iconPath,
    required this.powerOn,
    required this.onChanged,

  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: powerOn ?Colors.grey[700]: Colors.grey[200],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //IconButton(onPressed: onPressed, icon: icon)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(iconPath,
                    height: 65,
                    color: powerOn ?Colors.white :Colors.black,),
                ),

              Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(smartSensorName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: powerOn ?Colors.white :Colors.black,
                          fontSize: 20),),
                  )),
                  Transform.rotate(
                    angle: pi/2,
                    child: CupertinoSwitch(
                        value: powerOn,
                        onChanged: onChanged,
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
