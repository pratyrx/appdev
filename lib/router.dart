import 'package:ditto/pages/root_app.dart';
import 'package:ditto/pages/who.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings setting) {

  switch (setting.name) {
    case '/root_app':
      return MaterialPageRoute(builder: (context) => const RootApp());
    case '/today_target_detail':
      return MaterialPageRoute(builder: (context) => const TodayTargetDetailPage());
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(),
              ));
  }
}