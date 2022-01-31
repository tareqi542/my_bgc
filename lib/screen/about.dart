import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
                'This App is about Brahmanbaria Govt.Collage, a educational institute in Bangladesh'),
            Text(
                "It is Devoloped By Tarequl Islam, a student of B.Sc (Hon's) of this Collage"),
                
          ],
        ),
      ),
    );
  }
}
