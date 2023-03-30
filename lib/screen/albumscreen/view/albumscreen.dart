import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_parshing_local/screen/albumscreen/provider/albumprovider.dart';
import 'package:provider/provider.dart';

class Albumscreen extends StatefulWidget {
  const Albumscreen({Key? key}) : super(key: key);

  @override
  State<Albumscreen> createState() => _AlbumscreenState();
}

class _AlbumscreenState extends State<Albumscreen> {
  @override
  Widget build(BuildContext context) {

    Albumprovider albumproviderTrue = Provider.of(context,listen: true);
    Albumprovider albumproviderFalse = Provider.of(context,listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Json Parshing",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Album+",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 22)),
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
                  leading: Text("${albumproviderTrue.albumList[index].id}"),
                  title: Text("${albumproviderTrue.albumList[index].title}"),
                  subtitle: Text("${albumproviderTrue.albumList[index].userId}"),
                ),
              ),
              itemCount: albumproviderTrue.albumList.length,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: FloatingActionButton(onPressed: () {

                  albumproviderFalse.albumJsonParshing();

                },child: Text("Json",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),backgroundColor: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
