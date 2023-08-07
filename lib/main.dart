import 'package:birthday_app/app.dart';
import 'package:birthday_app/main.config.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'main.config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  runApp(const MyApp());
}

final getIt = GetIt.instance;
@InjectableInit()
void configureDependencies() => getIt.init();
