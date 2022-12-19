import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:symptops/main.dart';

class TestCovid extends StatelessWidget {
  const TestCovid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 51, 131, 205),
                  Color(0xFF11249F),
                ],
              ),
              image: const DecorationImage(
                image: AssetImage("assets/images/virus.png"),
                fit: BoxFit.fitWidth,
              )),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Self Chek Up \nFor Covid-19.",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SpreadScreen(),
                          ),
                        );
                      },
                      child: const Text('< How to Prevent'),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blueGrey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Image(
                  image: AssetImage(
                    "assets/images/doctor.png",
                  ),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    ));
  }
}
