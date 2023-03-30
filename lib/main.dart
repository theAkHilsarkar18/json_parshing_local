
import 'package:flutter/material.dart';
import 'package:json_parshing_local/screen/albumscreen/provider/albumprovider.dart';
import 'package:json_parshing_local/screen/albumscreen/view/albumscreen.dart';
import 'package:json_parshing_local/screen/basescreen/provider/baseprovider.dart';
import 'package:json_parshing_local/screen/basescreen/view/basescreen.dart';
import 'package:json_parshing_local/screen/commentscreen/provider/commentprovider.dart';
import 'package:json_parshing_local/screen/commentscreen/view/commentscreen.dart';
import 'package:json_parshing_local/screen/postscreen/provider/postprovider.dart';
import 'package:json_parshing_local/screen/postscreen/view/postscreen.dart';
import 'package:json_parshing_local/screen/userscreen/provider/userprovider.dart';
import 'package:json_parshing_local/screen/userscreen/view/userscreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Userprovider(),),
        ChangeNotifierProvider(create: (context) => Postprovider(),),
        ChangeNotifierProvider(create: (context) => Albumprovider(),),
        ChangeNotifierProvider(create: (context) => Baseprovider(),),
        ChangeNotifierProvider(create: (context) => Commentprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Basescreen(),
          'album' : (context) => Albumscreen(),
          'post' : (context) => Postscreen(),
          'user' : (context) => Userscreen(),
          'comment' : (context) => Commentscreen(),
        },
      ),
    ),
  );
}