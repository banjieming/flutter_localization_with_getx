import 'package:flutter/material.dart';
import 'package:flutter_localization/lang.dart';
import 'package:flutter_localization/language_page.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(Lang.homePage.tr),
          actions: [
            IconButton(
              onPressed: () => Get.to(const LanguagePage()),
              icon: const Icon(Icons.language),
            ),
          ],
        ),
        body: Center(
          child: Text(Lang.bodyhomePage.tr),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
