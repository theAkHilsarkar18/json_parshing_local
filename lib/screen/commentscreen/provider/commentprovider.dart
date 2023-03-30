import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json_parshing_local/screen/commentscreen/commentmodel/commentmodel.dart';

class Commentprovider extends ChangeNotifier {
  List commentList = [];

  Future<void> CommentJsonParshing() async {
    String commentJsonString =
        await rootBundle.loadString("assets/json/comment.json");
    var jsonComment = jsonDecode(commentJsonString);
    List jsonCommentList =
        jsonComment.map((e) => CommentModel().jsonFromComment(e)).toList();
    commentList = jsonCommentList;
    notifyListeners();
  }
}
