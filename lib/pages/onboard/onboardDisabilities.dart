import 'package:flutter/material.dart';


class OnBoardDisabilities extends StatefulWidget {
  const OnBoardDisabilities({Key? key}) : super(key: key);

  @override
  _OnBoardDisabilitiesState createState() => _OnBoardDisabilitiesState();
}

class _OnBoardDisabilitiesState extends State<OnBoardDisabilities> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 26, 25, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 3),
              const SizedBox(
                width: 121.0,
                height: 19.0,
                child: Image(
                  image: AssetImage('images/Comp3.png'),
                ),
              ),
              const SizedBox(height: 39),
              const SizedBox(
                width: 250.0,
                height: 250.0,
                child: Image(
                  image: AssetImage('images/Nursing home-cuate.png'),
                ),
              ),
              const SizedBox(height: 34),
              const SizedBox(
                child: Text(
                  'Disabilities',
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
                  'Medline will make your',
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
                  'life much easier by',
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
                  'finding right people',
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
                      "LET'S DO IT",
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
