import 'package:flutter/material.dart';
import 'package:flutter_localization/home_page.dart';
import 'package:flutter_localization/lang.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale(Lang.locale.first.keys.first),
      translations: Lang(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
