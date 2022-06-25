import 'package:flutter/material.dart';
import 'package:flutter_localization/lang.dart';
import 'package:get/get.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Language"),
        ),
        body: ListView.builder(
          itemCount: Lang.locale.length,
          itemBuilder: (context, index) {
            Map language = Lang.locale[index];
            return ListTile(
              onTap: () {
                Get.updateLocale(Locale(language.keys.first));
              },
              title: Text(
                language.values.first,
              ),
              trailing: language.keys.first == Get.locale!.languageCode
                  ? const Icon(Icons.check)
                  : null,
            );
          },
        ),
      ),
    );
  }
}
