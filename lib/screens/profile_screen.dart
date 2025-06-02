import 'package:flutter/material.dart';
import '../models/user.dart';

class profile_screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final user = User(
      name: "Krishnaraj",
      email: "krishnarajns@gmail.com",
      phone: "1234567890",
    );

    return Scaffold(
      appBar: AppBar(
        title:  Text("My Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/image/photo 1.jpeg"),
            ),
             SizedBox(height: 20),
            ProfileItem(label: 'Name', value: user.name),
            ProfileItem(label: 'Email', value: user.email),
            ProfileItem(label: 'Phone', value: user.phone),
             SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child:  Text(
                'Go Back',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ProfileItem extends StatelessWidget {
  final String label;
  final String value;

   ProfileItem({required this.label, required this.value, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:  EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding:  EdgeInsets.all(16),
        child: Center(
          child: Text(
            "$label: $value",
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
