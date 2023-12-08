
import 'package:escapegame/firstscreen.dart';
import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';



///
/// Test app
///
class MysApp01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Countdown',
      ),
    );
  }
}

///
/// Home page
///
class MyHomePage extends StatefulWidget {
  ///
  /// AppBar title
  ///
  final String title;

  /// Home page
  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

///
/// Page state
///
class _MyHomePageState extends State<MyHomePage> {
  // Controller
  final CountdownController _controller =
      new CountdownController(autoStart: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.cyan[100],
      body: 
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
          
          
            Countdown(
              
              // controller: _controller,
              seconds: 5,
              build: (_, double time) => Text(
                time.toString(),
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              interval: Duration(milliseconds: 100),
              onFinished: () {
                
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('La minuterie est terminée!'),
                  ),
                );

                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Firstscreen()));
                
              },
            ),
          ],
        ),
      );
    
  }
}