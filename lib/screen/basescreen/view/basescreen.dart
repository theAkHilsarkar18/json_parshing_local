import 'package:flutter/material.dart';
import 'package:json_parshing_local/screen/basescreen/provider/baseprovider.dart';
import 'package:json_parshing_local/screen/userscreen/view/userscreen.dart';
import 'package:provider/provider.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({Key? key}) : super(key: key);

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  @override
  Widget build(BuildContext context) {

    Baseprovider baseproviderFalse = Provider.of(context,listen: false);
    Baseprovider baseproviderTrue = Provider.of(context,listen: true);

    return SafeArea(
      child: Scaffold(
        body: baseproviderTrue.screenList[baseproviderTrue.navigationIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1),
          unselectedLabelStyle: TextStyle(color: Colors.white),
          currentIndex: baseproviderTrue.navigationIndex,
          showSelectedLabels: true,
          onTap: (value) {
            baseproviderFalse.changeIndex(value);

          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.one_k_outlined,color: Colors.white),label: "Post",backgroundColor: Colors.teal),
            BottomNavigationBarItem(icon: Icon(Icons.two_k_outlined,color: Colors.white),label: "Album",backgroundColor: Colors.teal),
            BottomNavigationBarItem(icon: Icon(Icons.three_k_outlined,color: Colors.white),label: "Comment",backgroundColor: Colors.teal),
            BottomNavigationBarItem(icon: Icon(Icons.four_k_outlined,color: Colors.white),label: "Photos",backgroundColor: Colors.teal),
            BottomNavigationBarItem(icon: Icon(Icons.five_k_outlined,color: Colors.white),label: "ToDos",backgroundColor: Colors.teal),
          ],
        ),
      ),
    );
  }
}
