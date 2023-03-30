
import 'package:flutter/material.dart';
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Postscreen(),
          'user' : (context) => Userscreen(),
        },
      ),
    ),
  );
}