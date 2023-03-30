import 'package:flutter/cupertino.dart';
import 'package:json_parshing_local/screen/albumscreen/view/albumscreen.dart';
import 'package:json_parshing_local/screen/postscreen/view/postscreen.dart';
import 'package:json_parshing_local/screen/userscreen/view/userscreen.dart';

class Baseprovider extends ChangeNotifier
{
  int navigationIndex = 0;


  List screenList = [

    Postscreen(),
    Albumscreen(),
    Userscreen(),
  ];

  void changeIndex(int value)
  {
    navigationIndex = value;
    notifyListeners();
  }

}