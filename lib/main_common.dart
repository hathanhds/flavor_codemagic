import 'package:flavor_codemagic/app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/config_reader.dart';
import 'config/environment.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  late MaterialColor primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.green;
      break;
    case Environment.stag:
      primaryColor = Colors.orange;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(MyApp(
    color: primaryColor,
  ));
}
