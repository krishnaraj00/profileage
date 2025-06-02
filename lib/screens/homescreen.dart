import 'package:flutter/material.dart';

import '../models/user.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.blue,title: const Text("Welcome to flutter internship", style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),)),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder:
                  (context) => const Center(child: CircularProgressIndicator()),
            );

            await Future.delayed(const Duration(seconds: 2));
            Navigator.of(context).pop();

            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => profile_screen()),
            );
          },
          child:  Text("View Profile"),
        ),
      ),
    );
  }
}
