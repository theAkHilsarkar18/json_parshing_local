import 'package:flutter/material.dart';

class AlbumModel
{
  int? id,userId;
  String? title;

  AlbumModel({this.id,this.userId,this.title});

  AlbumModel jsonFromAlbumModel(Map m1)
  {
    id = m1['id'];
    userId = m1['userId'];
    title = m1['title'];
    AlbumModel albumModel = AlbumModel(id: id,userId: userId,title: title);
    return albumModel;
  }


}