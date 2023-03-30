
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_parshing_local/screen/postscreen/provider/postprovider.dart';
import 'package:provider/provider.dart';

class Postscreen extends StatefulWidget {
  const Postscreen({Key? key}) : super(key: key);

  @override
  State<Postscreen> createState() => _PostscreenState();
}

class _PostscreenState extends State<Postscreen> {
  @override
  Widget build(BuildContext context) {

    Postprovider postproviderTrue = Provider.of<Postprovider>(context,listen: true);
    Postprovider postproviderFalse = Provider.of(context,listen: false);


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Json Parshing",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Post+",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 22)),
            ),
          ],
        ),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: postproviderTrue.postList.length,
              itemBuilder: (context, index) => ListTile(
                leading: Text("${postproviderTrue.postList[index].id}"),
                title: Text("${postproviderTrue.postList[index].title}"),
                subtitle: Text("${postproviderTrue.postList[index].body}"),
                trailing: Text("${postproviderTrue.postList[index].userId}"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: FloatingActionButton(onPressed: () {
                  postproviderFalse.postJsonParshing();
                },child: Text("Json",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),backgroundColor: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
