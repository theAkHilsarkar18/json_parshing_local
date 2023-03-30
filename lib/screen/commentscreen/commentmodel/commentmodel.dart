
class CommentModel
{
  int? id,postId;
  String? name,email,body;

  CommentModel({this.id, this.postId, this.name, this.email, this.body});

  CommentModel jsonFromComment(Map m1)
  {
    id = m1['id'];
    postId = m1['postId'];
    name = m1['name'];
    email = m1['email'];
    body = m1['body'];

    CommentModel commentModel = CommentModel(id: id,postId: postId,body: body,email: email,name: name);
    return commentModel;
  }

}