import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:json_parshing_local/screen/albumscreen/albummodel/albummodel.dart';
import 'package:provider/provider.dart';

class Albumprovider extends ChangeNotifier
{
  List<dynamic> albumList = [];

  Future<void> albumJsonParshing()
  async {
    String albumJsonString = await rootBundle.loadString("assets/json/album.json");
    var albumJson = jsonDecode(albumJsonString);
    List<dynamic> albumJsonList = albumJson.map((e)=>AlbumModel().jsonFromAlbumModel(e)).toList();
    albumList = albumJsonList;
    notifyListeners();
  }
}