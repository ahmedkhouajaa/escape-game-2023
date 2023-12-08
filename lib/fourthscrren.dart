import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Forthscreen extends StatefulWidget {
  const Forthscreen({super.key});

  @override
  State<Forthscreen> createState() => _ForthscreenState();
}

class _ForthscreenState extends State<Forthscreen> {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            child: Image.asset('assets/felicitation.gif'),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                "félicitations champions ",
                style: TextStyle(fontSize: 50, color: Colors.black),
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "🎀🎊🎁🏆",
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "votre score est : 50 points et votre rang est le 2'eme",
            style: TextStyle(fontSize: 25, color: Colors.black),
          )
        ],
      ),
    );
  }
}
