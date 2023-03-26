import 'package:aerofarm_firebase/smartsensors/LightPage.dart';
import 'package:aerofarm_firebase/smartsensors/TemperaturePage.dart';
import 'package:aerofarm_firebase/read%20data/get_user_name.dart';
import 'package:aerofarm_firebase/smartsensors/Sensors.dart';
import 'package:aerofarm_firebase/smartsensors/WaterParameters.dart';
import 'package:aerofarm_firebase/smartsensors/soilmoisturepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomesPage2 extends StatefulWidget {
  const HomesPage2({Key? key}) : super(key: key);

  @override
  State<HomesPage2> createState() => _HomesPage2State();
}

class _HomesPage2State extends State<HomesPage2> {

  final user = FirebaseAuth.instance.currentUser!;
  //padding Constants
  final double horizontalPadding = 40;
  final double verticalPadding = 25;
  double get ContainerHeight => MediaQuery.of(context).size.height * 0.55;
  double get ContainerWidth => MediaQuery.of(context).size.width * 1;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child:AppBar(
          backgroundColor: Colors.grey[300],
        elevation: 0,
        flexibleSpace: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Padding(
              padding: EdgeInsets.only(top: 55.0),
              child: GestureDetector(
                onTap: (){
                },
                  child: Image.asset('lib/icons/menu.png',
                    fit: BoxFit.contain,
                    height: 45,
                    color: Colors.grey[800],)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 55.0),
              child: GestureDetector(
                  onTap: (){
                    FirebaseAuth.instance.signOut();
                  },
                  child: Image.asset('lib/icons/user.png',fit: BoxFit.contain,height: 45,color: Colors.grey[800],)),
            )],

            //lib/icons/menu.png
          ),
        ),
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          //appBar
          [
        //welcome to aerofarm
           const SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('AeroFarm',
                  style: TextStyle(fontSize: 20),),
                  Text('Farming Automated',
                  style: TextStyle(fontSize: 40),),
                ],
              ),
            ),

            //Sensors+grid
            SizedBox(height: 20,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sensors',style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 20,),

            //grid
            Container(
              height: ContainerHeight,
              width: ContainerWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,),
                    child: Row(
                      children: [

                        //temperature
                        Container(
                          height: 200,
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                            color: Colors.grey[400],
                            elevation: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 40.0,right: 10),
                                  child: GestureDetector(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TemperaturePage()));
                                  },
                                      child: Image.asset('lib/icons/temperature.png',scale: 6,)),
                                ),
                                SizedBox(height: 20,),
                                Text('Temperature',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                            ),
                          ),
                        ),

                        SizedBox(width: 10,),

                        //soilmoisture
                        Container(
                          height: 200,
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                            color: Colors.grey[400],
                            elevation: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 25.0,right: 0),
                                  child: GestureDetector(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SoilMoisturePage()));
                                  },
                                      child: Image.asset('lib/icons/soilmoisture.png',scale: 5,)),
                                ),
                                SizedBox(height: 20,),
                                Text('Soil Moisture',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //lights

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,
                        horizontal: 25),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                            color: Colors.grey[400],
                            elevation: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 40.0,right: 5),
                                  child: GestureDetector(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LightPage()));
                                  },
                                      child: Image.asset('lib/icons/light.png',scale: 6,)),
                                ),
                                SizedBox(height: 20,),
                                Text('Lights',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                            ),
                          ),
                        ),



                        SizedBox(width: 10,),

                        //waterparameters
                        Container(
                          height: 200,
                          width: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                            color: Colors.grey[400],
                            elevation: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 25.0,right: 0),
                                  child: GestureDetector(onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const WaterParametersPage()));
                                  },
                                      child: Image.asset('lib/icons/drop.png',scale: 5,)),
                                ),
                                SizedBox(height: 20,),
                                Text('Water',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
      );
  }
}
