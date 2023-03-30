class Photomodel
{
  int? id,albumId;
  String? title,url,thumbnailUrl;

  Photomodel({this.id, this.albumId, this.title, this.url, this.thumbnailUrl});

  Photomodel jsonFromPhoto(Map m1)
  {
    id = m1['id'];
    albumId = m1['albumId'];
    title = m1['title'];
    url = m1['url'];
    thumbnailUrl = m1['thumbnailUrl'];

    Photomodel photomodel = Photomodel(id: id,albumId: albumId,title: title,url: url,thumbnailUrl: thumbnailUrl);

    return photomodel;


  }

}