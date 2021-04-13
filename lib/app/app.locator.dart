// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:get_it/get_it.dart';
import 'package:get_it_provider/helloService.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/src/services/shared_preferences_service.dart';
import 'package:stacked_themes/src/services/statusbar_service.dart';

final locator = GetIt.instance;

Future setupLocator() async {
  locator.registerLazySingleton(() => HelloService());

  final sharedPreferencesService = await SharedPreferencesService.getInstance();
  locator.registerSingleton(sharedPreferencesService);
  locator.registerLazySingleton(() => StatusBarService());
}
