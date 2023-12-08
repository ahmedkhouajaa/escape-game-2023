import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cogratulation extends StatefulWidget {
  const Cogratulation({super.key});

  @override
  State<Cogratulation> createState() => _CogratulationState();
}

class _CogratulationState extends State<Cogratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Container(
        child: Text('Congragtulatio  now you are in Sida screen ',style: TextStyle(fontSize: 50),),
      ),
    
    ));
  }
}