import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json_parshing_local/screen/photoscreen/photomodel/photomodel.dart';

class Photoprovider extends ChangeNotifier
{
  List photoList = [];

  Future<void> photoJsonParshing()
  async {
    String photoJsonString = await rootBundle.loadString("assets/json/photo.json");
    var jsonPhoto = jsonDecode(photoJsonString);
    List jsonPhotoList = jsonPhoto.map((e)=>Photomodel().jsonFromPhoto(e)).toList();
    photoList = jsonPhotoList;
    notifyListeners();
  }
}