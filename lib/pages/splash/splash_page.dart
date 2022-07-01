import 'package:flutter/material.dart';
import 'package:medline/pages/login/login_page.dart';
import 'package:medline/pages/profile/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:medline/pages/categories/categories.dart';
import '../medicine/MedicineFeed.dart';

class SplashPage extends StatelessWidget{
  const SplashPage({Key? key}) : super(key: key);

  Future<void> homePage(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString('access_token');
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    homePage(context);
    return Container();
  }

}