
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timer_count_down/timer_count_down.dart';

import 'firstscreen.dart';
import 'fourthscrren.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen({super.key});

  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  var solution;
  final myController = TextEditingController();
  GlobalKey<FormState> redhawk = new GlobalKey<FormState>();

  signin() async {
    var formdata = redhawk.currentState;
    formdata!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.only(top: 20),
              height: 100,
              width: double.infinity,
              child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
          
          
            Countdown(
              
              // controller: _controller,
              seconds: 120,
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
                    content: Text('Timer is done!'),
                  ),
                );

                 Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Forthscreen()));
                
              },
            ),
          ],
        ),),
          Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                  child: Text(
                "888 .. 104",
                style: TextStyle(fontSize: 20),
              )),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: myController,
               
                onSaved: (newValue) {
                  solution = newValue;
                },
                decoration: InputDecoration(
                  labelText: 'Solution',
                  floatingLabelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: (BorderSide(width: 1.0, color: Colors.black)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: (BorderSide(width: 1.0, color: Colors.black)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Go'),
                onPressed: () {
                 
                  if (myController.text == "vih") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Forthscreen()));
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}