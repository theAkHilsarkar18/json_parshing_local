import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_parshing_local/screen/photoscreen/provider/photoprovider.dart';
import 'package:provider/provider.dart';

class Photoscreen extends StatefulWidget {
  const Photoscreen({Key? key}) : super(key: key);

  @override
  State<Photoscreen> createState() => _PhotoscreenState();
}

class _PhotoscreenState extends State<Photoscreen> {
  @override
  Widget build(BuildContext context) {
    Photoprovider photoproviderTrue = Provider.of(context, listen: true);
    Photoprovider photoproviderFalse = Provider.of(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Json Parshing",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Photo+",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 22)),
            ),
          ],
        ),
        body: Stack(
          children: [
            ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                  leading: Text("${photoproviderTrue.photoList[index].id}"),
                  trailing: Text("${photoproviderTrue.photoList[index].albumId}"),
                  title: Text("${photoproviderTrue.photoList[index].title}"),
                  subtitle: Text("${photoproviderTrue.photoList[index].url}"),
                ),
              ),
              itemCount: photoproviderFalse.photoList.length,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: FloatingActionButton(onPressed: () {

                  photoproviderFalse.photoJsonParshing();

                },child: Text("Json",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),backgroundColor: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
