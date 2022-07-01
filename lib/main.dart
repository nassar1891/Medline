import 'dart:io';

import 'package:flutter/material.dart';
import 'package:medline/core/utils/app_overrides.dart';
import 'package:medline/pages/login/login_page.dart';
import 'package:medline/pages/register/register_page.dart';
import 'medline.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = AppOverrides.httpOverrides;
  await initHiveForFlutter();



  runApp(const Medline());
}
