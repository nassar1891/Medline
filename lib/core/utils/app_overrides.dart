import 'dart:io';

class AppOverrides {
  AppOverrides._();

  static final HttpOverrides httpOverrides = _MyHttpOverrides();
}

class _MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
