

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json_parshing_local/screen/postscreen/postmodel/postmodel.dart';
import 'package:provider/provider.dart';

class Postprovider extends ChangeNotifier
{
  List<dynamic> postList = [];

  Future<void> postJsonParshing()
  async {
    // String postJsonString = await rootBundle.loadString("assets/json/post.json");
    // var postJson = jsonDecode(postJsonString);

    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(uri);
    var postJson = jsonDecode(response.body);


    List<dynamic> postJsonList = postJson.map((e)=>PostModel().jsonFromPostModel(e)).toList();
    postList = postJsonList;
    notifyListeners();
  }
}