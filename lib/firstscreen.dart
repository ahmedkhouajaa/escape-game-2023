import 'package:escapegame/1scrren.dart';
import 'package:escapegame/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 100),
          Text("Prêt à jouer !!", style: TextStyle(fontSize: 30)),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: Text('Commencer'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Fscreen()));
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text("Règles", style: TextStyle(fontSize: 30, color: Colors.red)),
          SizedBox(height: 10),
          Text(
              "1/Vous devez répondre à la question avant la fin du temps imparti",
              style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 20,
          ),
          Text("2/Lorsque le temps expire, vous revenez à la première étape",
              style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}
