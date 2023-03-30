import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_parshing_local/screen/userscreen/provider/userprovider.dart';
import 'package:provider/provider.dart';

class Userscreen extends StatefulWidget {
  const Userscreen({Key? key}) : super(key: key);

  @override
  State<Userscreen> createState() => _UserscreenState();
}

class _UserscreenState extends State<Userscreen> {
  @override
  Widget build(BuildContext context) {
    Userprovider? userproviderTrue = Provider.of(context, listen: true);
    Userprovider? userproviderFalse = Provider.of(context, listen: false);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("Json Parshing",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("User+",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 22)),
              ),
            ],
          ),
            body: Stack(
            children: [
              ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  shape: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  leading: Text("${index+1}"),
                  title: Text("${userproviderTrue.userList[index]["name"]}"),
                  subtitle: Text("${userproviderTrue.userList[index]["username"]}"),
                ),
                itemCount: userproviderTrue!.userList.length,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: FloatingActionButton(onPressed: () {
                    userproviderFalse!.jsomParshing();
                  },child: Text("Json",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),backgroundColor: Colors.teal),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
