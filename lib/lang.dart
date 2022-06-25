import 'package:get/get.dart';

class Lang extends Translations {
  static const List<Map<String, String>> locale = [
    {'id_ID': 'Indonesia'},
    {'en_US': 'English'},
    {'tw_TW': 'Chinese Traditional'}
  ];

  static const homePage = 'home_page';
  static const bodyhomePage = 'body_home_page';

  @override
  Map<String, Map<String, String>> get keys {
    return {
      'id_ID': {
        homePage: "Halaman Utama",
        bodyhomePage: "Hallo Dunia",
      },
      'en_US': {
        homePage: "Home Page",
        bodyhomePage: "Hello World",
      },
      'tw_TW': {
        homePage: "主頁",
        bodyhomePage: "你好世界",
      },
    };
  }
}
