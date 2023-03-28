


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Userprovider extends ChangeNotifier
{


  List userList = [];
  Future<void> jsomParshing()
  async {

    String jsonUserDataString = await rootBundle.loadString("assets/json/user.json");
    var json = jsonDecode(jsonUserDataString);
    userList = json;
    notifyListeners();
  }
}