import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../modal/api_modal.dart';


class Api_Provider extends ChangeNotifier {
  List<dynamic> postList = [];

  Future<void> jsonPrasing() async {
    String jsonDataString =
    await rootBundle.loadString("assets/json/post.json");
    var json = jsonDecode(jsonDataString);
    postList = json;

    // factory call json
    List<dynamic> postModalList =
    json.map((e) => PostModel().fromJson(e)).toList();
    postList = postModalList;
    notifyListeners();
  }
}