import 'package:flutter/material.dart';
import 'package:medline/core/app_colors.dart';
import 'package:medline/pages/disabilities/DisabilitiesState.dart';
import 'package:medline/pages/donations/DonationState.dart';
import 'package:medline/pages/login/confirmation.dart';
import 'package:medline/pages/login/login_page.dart';
import 'package:medline/pages/medicine/MedicineState.dart';
import 'package:medline/pages/onboard/onboardDisabilities.dart';
import 'package:medline/pages/onboard/onboardDonations.dart';
import 'package:medline/pages/onboard/onboardMedicine.dart';
import 'package:medline/pages/onboard/welcome.dart';
import 'package:medline/pages/profile/profile.dart';
import 'package:medline/pages/register/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:medline/pages/categories/categories.dart';
import '../medicine/MedicineFeed.dart';

class SplashPage extends StatelessWidget{
  const SplashPage({Key? key}) : super(key: key);

  Future<void> homePage(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString('access_token');
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PostInDisabilities()));
  }

  @override
  Widget build(BuildContext context) {
    homePage(context);
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: Image(
          image: AssetImage('images/splash.png'),
      ),
        ),),
    );
  }

}