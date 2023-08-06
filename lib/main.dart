import 'package:birthday_app/app.dart';
import 'package:birthday_app/presentation/blocs/bloc/guest_list_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // configureDependencies();
  final getIt = GetIt.instance;
  @InjectableInit()
  void configureDependencies() => getIt.init();
  configureDependencies();
  // GetIt.I.registerSingleton<GuestListBloc>(GuestListBloc());
  runApp(const MyApp());
}

// final getIt = GetIt.instance;

// @InjectableInit(
//   initializerName: 'init', // default
//   preferRelativeImports: true, // default
//   asExtension: true, // default
// )
// void configureDependencies() => getIt.init();
