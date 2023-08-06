import 'package:birthday_app/app.dart';
import 'package:birthday_app/domain/repository/guest_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

void main() async {
  // Инициализация Flutter binding
  WidgetsFlutterBinding.ensureInitialized();

  // Инициализация Hive
  await initHive();

  // Конфигурирование DI
  configureDependencies();

  runApp(const MyApp());
}

@module
abstract class RegisterModule {
  @lazySingleton
  GuestRepository get guestRepository;
}

@InjectableInit()
void configureDependencies() => GetIt.I();

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(GuestAdapter());
}
