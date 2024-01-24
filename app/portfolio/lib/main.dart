import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buildProfile(),
            const SizedBox(height: 40.0),
            buildRowsWithIcons(),
            const SizedBox(height: 40.0),
            buildSectionTitle("About Me"),
              const SizedBox(height: 20.0),
            buildText(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut porta dolor. Nam et mi lorem. Pellentesque lacinia lectus ante,"),
            const SizedBox(height: 10.0),
            const SizedBox(height: 150.0),
            buildSectionTitle("Created By ME"),
          ],
        ),
      ),
    );
  }

  Widget buildProfile() {
  return const Row(
    children: <Widget>[
      CircleAvatar(
        radius: 50,
         // Replace with your image asset
      ),
      SizedBox(width: 20.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Muhammad Ahsan",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("App Developer"),
        ],
      ),
    ],
  );
}

  Widget buildRowsWithIcons() {
    return Column(
      children: <Widget>[
        buildRowWithIcon(Icons.person, "Profile"),
        buildRowWithIcon(Icons.work, "Work Experience"),
        buildRowWithIcon(Icons.school, "Education"),
        buildRowWithIcon(Icons.favorite, "Hobbies"),
        buildRowWithIcon(Icons.language, "Languages"),
      ],
    );
  }

  Widget buildRowWithIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 50),
      child: Row(
        children: [
          Icon(icon, size: 24.0),
          const SizedBox(width: 10.0),
          Text(
            text,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildText(String text) {
    return Text(text );
  }
}
