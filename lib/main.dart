import 'package:ditto/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'router.dart' as router;
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    onGenerateRoute: router.generateRoute,
));
}