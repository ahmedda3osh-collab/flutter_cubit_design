

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:simple_designe/simple_design.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization
  (
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations', 
      fallbackLocale: Locale('en'),
  child: SimpleDesign()));
}