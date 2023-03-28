
import 'package:flutter/material.dart';
import 'package:json_parshing_local/screen/userscreen/provider/userprovider.dart';
import 'package:json_parshing_local/screen/userscreen/view/userscreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Userprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Userscreen(),
        },
      ),
    ),
  );
}