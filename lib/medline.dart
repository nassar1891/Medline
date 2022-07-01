import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:medline/pages/disabilities/DisabilitiesFeed.dart';
import 'package:medline/pages/disabilities/DisabilitiesState.dart';
import 'package:medline/pages/donations/DonationFeed.dart';
import 'package:medline/pages/donations/DonationState.dart';
import 'package:medline/pages/login/confirmation.dart';

import 'package:medline/pages/login/login_page.dart';
import 'package:medline/pages/medicine/MedicineFeed.dart';
import 'package:medline/pages/medicine/MedicineState.dart';
import 'package:medline/pages/onboard/onboardDisabilities.dart';
import 'package:medline/pages/onboard/onboardDonations.dart';
import 'package:medline/pages/onboard/welcome.dart';
import 'package:medline/pages/profile/profile.dart';
import 'package:medline/pages/register/register_page.dart';
import 'package:medline/pages/splash/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Medline extends StatelessWidget {
  const Medline({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final HttpLink httpLink = HttpLink(
      'http://medline-ksu.herokuapp.com/graphql',
    );
    final Link link = httpLink;
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: link,
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(store: HiveStore()),
      ),
    );
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medline',
        theme: ThemeData(
          textTheme: GoogleFonts.ibmPlexSansArabicTextTheme(),
        ),
        home: const SplashPage(),
      ),
    );
  }
}
