import 'package:flutter/services.dart';
import 'package:my_bgc/models/web_model.dart';

class WebRepo {
  static Future<List<WebModel>> getWebLink() async {
    final response = await rootBundle.loadString('assets/json/webs.json');
    if (response == null) {
      return [];
    } else {
      return webModelFromJson(response);
    }
  }
}
