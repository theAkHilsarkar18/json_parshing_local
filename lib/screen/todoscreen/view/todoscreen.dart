import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/todoprovider.dart';

class Todoscreen extends StatefulWidget {
  const Todoscreen({Key? key}) : super(key: key);

  @override
  State<Todoscreen> createState() => _TodoscreenState();
}

class _TodoscreenState extends State<Todoscreen> {
  @override
  Widget build(BuildContext context) {

    Todoprovider todoproviderTrue = Provider.of(context,listen: true);
    Todoprovider todoproviderFalse = Provider.of(context,listen: false);


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Json Parshing",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Todo+",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 22)),
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
                  leading: Text("${todoproviderTrue.todoList[index].id}"),
                  trailing: Text("${todoproviderTrue.todoList[index].userId}"),
                  title: Text("${todoproviderTrue.todoList[index].title}"),
                  subtitle: Text("${todoproviderTrue.todoList[index].completed}"),
                ),
              ),
              itemCount: todoproviderTrue.todoList.length,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: FloatingActionButton(onPressed: () {

                  todoproviderFalse.todoJsonParshing();

                },child: Text("Json",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),backgroundColor: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
