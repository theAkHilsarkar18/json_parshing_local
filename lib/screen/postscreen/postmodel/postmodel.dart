
class PostModel
{
  int? id,userId;
  String? title,body;

  PostModel({this.id,this.userId,this.title,this.body});

  PostModel jsonFromPostModel(Map m1)
  {
    id = m1['id'];
    userId = m1['userId'];
    title = m1['title'];
    body = m1['body'];
    PostModel pm1 = PostModel(id: id,userId: userId,title: title,body: body);
    return pm1;

  }

}