import 'package:flutter/material.dart';

class AthleteProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Athlete Profile'),
      ),
      body: AthleteProfilePage(
        name: 'John Doe',
        sport: 'Basketball',
        age: 25,
        experience: 7,
        profileImageUrl: 'assets/download.png',
      ),
    );
  }
}

class AthleteProfilePage extends StatelessWidget {
  final String name;
  final String sport;
  final int age;
  final int experience;
  final String profileImageUrl;

  AthleteProfilePage({
    required this.name,
    required this.sport,
    required this.age,
    required this.experience,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(profileImageUrl),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              sport,
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey[600],
              ),
            ),
          ),
          SizedBox(height: 20),
          Divider(),
          ListTile(
            leading: Icon(Icons.cake),
            title: Text('Age'),
            subtitle: Text('$age years'),
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Experience'),
            subtitle: Text('$experience years'),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Action to edit profile or another function
              },
              child: Text('Edit Profile'),
            ),
          ),
        ],
      ),
    );
  }
}
