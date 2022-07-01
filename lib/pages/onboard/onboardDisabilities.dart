import 'package:flutter/material.dart';


class OnboardDisabilities extends StatelessWidget {
  const OnboardDisabilities({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(25, 26, 25, 1),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                width: 317.0,
                height: 318.0,
                child: Image(image: AssetImage('images/Nursing home-cuate.png'),

                ),
              ),

              const SizedBox(height: 89),

              Padding(
                padding: const EdgeInsets.only(left: 75),
                child: Text(
                  'Disabilities',
                    style: TextStyle(
                      fontFamily: 'IBMPlexSansArabic',
                      fontSize:49.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                ),
              ),
              const SizedBox(height: 64),
              Padding(
                padding: const EdgeInsets.only(left: 55),
                child: Text(
                  '''Together will Make your
                      Life Much easier By 
                      finding Right people
                  ''',
                    style: TextStyle(
                      fontFamily: 'IBMPlexSansArabic',
                      fontSize:25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),

                  
                ),
              ),
              

              const SizedBox(height: 46),

              SizedBox(
                width: 317.0,
                height: 57.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 39),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(30, 64, 35, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(53),
                    ))),
              
                      
                    child: Text(
                      'Lets Do IT',
                      style: TextStyle(
                        fontFamily: 'IBMPlexSansArabic',
                        fontSize:21.0,
                        color: Color.fromRGBO(44, 169, 63 , 1),
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

               