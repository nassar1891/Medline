import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff151515),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 317.0,
                height: 318.0,
                child: Image(
                  image: AssetImage('images/welcome.png'),
                ),
              ),
              const SizedBox(height: 33),
              Padding(
                padding: EdgeInsets.only(left: 78.0),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontFamily: 'IBMPlexSansArabic',
                    fontSize: 49.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 64),
              Padding(
                padding: const EdgeInsets.only(left: 57),
                child: Text(
                  '''Welcome to Together
                     Simple But Powerful''',
                  style: TextStyle(
                    fontFamily: 'IBMPlexSansArabic',
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 83),
              SizedBox(
                width: 317.0,
                height: 57.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 39),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(30, 64, 35, 1)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(53),
                        ))),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'IBMPlexSansArabic',
                        fontSize: 21.0,
                        color: Color.fromRGBO(44, 169, 63, 1),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
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
