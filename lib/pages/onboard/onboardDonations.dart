import 'package:flutter/material.dart';

class OnboardDonations extends StatelessWidget {
  const OnboardDonations({ Key? key }) : super(key: key);

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
                child: Image(image: AssetImage('images/Blood donation-amico.png'),
                              
                ),
              ),

              const SizedBox(height: 34),

              Padding(
                padding: const EdgeInsets.only(left: 78),
                child: Text(
                  'Donations',
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
                padding: const EdgeInsets.only(left: 57),
                child: Text(
                  '''Together can help with
                      Blood Donation By
                        Linking People''',
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
                      'Next',
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

               