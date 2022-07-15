import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 26, 25, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 17),
              const SizedBox(
                width: 121.0,
                height: 19.0,
                child: Image(
                  image: AssetImage('images/Comp.png'),
                ),
              ),
              const SizedBox(height: 39),
              const SizedBox(
                width: 250.0,
                height: 250.0,
                child: Image(
                  image: AssetImage('images/welcome.png'),
                ),
              ),
              const SizedBox(height: 34),
              const SizedBox(
                child: Text(
                  'WELCOME',
                  style: TextStyle(
                    fontFamily: 'IBMPlexSansArabic',
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const SizedBox(
                child: Text(
                  'Welcome to Medline',
                  style: TextStyle(
                    fontFamily: 'IBMPlexSansArabic',
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              const SizedBox(
                child: Text(
                  'Simple But Powerful',
                  style: TextStyle(
                    fontFamily: 'IBMPlexSansArabic',
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                child: Center(
                  child: Container(
                    height: 58,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(30, 64, 35, 1),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.green,
                          spreadRadius: 1,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: const Center(
                        child: Text(
                      "NEXT",
                      style: TextStyle(
                        color: Color.fromRGBO(44, 169, 63, 1),
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
