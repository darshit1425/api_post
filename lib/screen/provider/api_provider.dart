import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../modal/api_modal.dart';
import 'package:http/http.dart' as http;

class Api_Provider extends ChangeNotifier {
  List<dynamic> postList = [];

  // Future<void> jsonPrasing() async

  Future<void> postApiCall() async {
    // post api link online data  call
    String apilink = "https://jsonplaceholder.typicode.com/posts";

    //api call

    Uri uri = Uri.parse(apilink);
    var resonse = await http.get(uri);
    var json = jsonDecode(resonse.body);

    List<dynamic> apiModalList =
        json.map((e) => PostModel().fromJson(e)).toList();

    // print(resonse.body);
    postList = apiModalList;
    notifyListeners();

    //
  }
}
