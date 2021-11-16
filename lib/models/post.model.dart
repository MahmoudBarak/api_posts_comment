class PostsModel{


  final int? userid;
  final String? body;
  final String? titel;
  final int? id;

  PostsModel({
  this.userid,
  this.titel,
  this.body,
  this.id,
  });

  factory PostsModel.fromjson(Map<String,dynamic>post){
    return PostsModel(
      id: post["id"],
      userid: post["Userid"],
      titel: post["title"],
      body: post["body"],

    );
  }
}