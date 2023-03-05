import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
    class GetUserName extends StatelessWidget {

      final String documentID;
      GetUserName({required this.documentID});
      @override
      Widget build(BuildContext context) {
        //get collection
        CollectionReference LoginID = FirebaseFirestore.instance.collection('LoginID');
        return FutureBuilder<DocumentSnapshot>(
            future: LoginID.doc(documentID).get(),
            builder:(context,snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
            snapshot.data!.data() as Map<String, dynamic>;
            return Text('name: ${data['name']}');
          }
          return Text('Loading...');
        }
        );
      }
    }
    