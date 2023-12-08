import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:escapegame/1scrren.dart';
import 'package:escapegame/4scrren.dart';
import 'package:escapegame/firstscreen.dart';
import 'package:escapegame/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timer_count_down/timer_count_down.dart';

class THscrren extends StatefulWidget {
  const THscrren({super.key});

  @override
  State<THscrren> createState() => _THscrrenState();
}

class _THscrrenState extends State<THscrren> {
  var solution;
  final myController = TextEditingController();
  GlobalKey<FormState> redhawk = new GlobalKey<FormState>();

  signin() async {
    var formdata = redhawk.currentState;
    formdata!.validate();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    signin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                        content: Text('La minuterie est terminée!!'),
                      ),
                    );

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fscreen()));
                  },
                ),
              ],
            ),
          ),
          Form(
            key: redhawk,
            child: Column(
              children: [
               Container(
                    child: Text(
                  "Question 3",
                  style: TextStyle(fontSize: 30),
                )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Text(
                  "Qu'est-ce que le chiffrement des données ?\n"
                  "a. Le processus de rendre les données illisibles sans la clé appropriée.\n"
                  "b. Le stockage sécurisé des données sur un disque dur.\n"
                  "c. La suppression permanente des données.",
                  style: TextStyle(fontSize: 20),
                )),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: myController,
                  onSaved: (val) {
                    solution = val;
                  },
                  validator: ((val) {
                    if (val != "a") {
                      return "non, 🙂🙂🙂";
                    } else
                      return null;
                  }),
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
                  onPressed: () async {
                    await signin();

                    if (myController.text == "b") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Foscreen()));
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
