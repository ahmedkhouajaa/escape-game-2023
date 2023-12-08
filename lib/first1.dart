import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import 'firstscreen.dart';

/// Score manager class
class ScoreManager {
  int _score = 0;

  int get score => _score;

  void incrementScore() {
    _score++;
  }

  void resetScore() {
    _score = 0;
  }
}

/// Player statistics data class
class PlayerStatistics {
  final String pseudo;
  final int score;
  final String level;
  final String answer;
  final int timeInSeconds;

  PlayerStatistics({
    required this.pseudo,
    required this.score,
    required this.level,
    required this.answer,
    required this.timeInSeconds,
  });
}

/// Test app


/// Home page
class Red extends StatefulWidget {
  final String title;

  Red({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _RedState createState() => _RedState();
}

/// Page state
class _RedState extends State<Red> {
  final CountdownController _controller = CountdownController(autoStart: true);
  final ScoreManager _scoreManager = ScoreManager();
  final TextEditingController _pseudoController = TextEditingController();
  String _answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              SizedBox(height: 15,),
              Text(" le 01/12 ?? ",style: TextStyle(fontSize: 18),),
              SizedBox(height: 5,),
              Text("ca te dit quelque chose ??",style: TextStyle(fontSize: 18),)
            ],
          ),
          SizedBox(height: 20),
          TextField(
            controller: _pseudoController,
            decoration: InputDecoration(labelText: 'Enter Pseudo'),
          ),
          SizedBox(height: 20),
          Countdown(
            seconds: 120,
            build: (_, double time) => Text(
              time.toString(),
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            interval: Duration(milliseconds: 100),
            onFinished: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Timer is done!'),
                ),
              );

              // Add player statistics to the scoreboard
              PlayerStatistics playerStatistics = PlayerStatistics(
                pseudo: _pseudoController.text,
                score: _scoreManager.score,
                level: 'Your level',  // Replace with the actual level logic
                answer: _answer,
                timeInSeconds: 120,
              );
              
              // Navigate to the next screen with player statistics
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Firstscreen()),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Logic for checking answer and updating score
              _scoreManager.incrementScore();
              // Set the answer value (replace this with your actual logic)
              _answer = 'Your answer';
            },
            child: Text('Submit Answer'),
          ),
        ],
      ),
    );
  }
}
