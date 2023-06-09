import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_parshing_local/screen/commentscreen/provider/commentprovider.dart';
import 'package:provider/provider.dart';

class Commentscreen extends StatefulWidget {
  const Commentscreen({Key? key}) : super(key: key);

  @override
  State<Commentscreen> createState() => _CommentscreenState();
}

class _CommentscreenState extends State<Commentscreen> {
  @override
  Widget build(BuildContext context) {

    Commentprovider commentproviderTrue = Provider.of(context,listen: true);
    Commentprovider commentproviderFalse = Provider.of(context,listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Json Parshing",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Comment+",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 22)),
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
                  leading: Text("${commentproviderTrue.commentList[index].id}"),
                  trailing: Text("${commentproviderTrue.commentList[index].postId}"),
                  title: Text("${commentproviderTrue.commentList[index].name}"),
                  subtitle: Text("${commentproviderTrue.commentList[index].email}"),
                ),
              ),
              itemCount: commentproviderTrue.commentList.length,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: FloatingActionButton(onPressed: () {

                  commentproviderFalse.CommentJsonParshing();

                },child: Text("Json",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),backgroundColor: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
