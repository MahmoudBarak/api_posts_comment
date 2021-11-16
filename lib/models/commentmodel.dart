class Commentmodel{
final String? email;
final int? postid;
final String? body;
final String? name;
final int? commentid;

Commentmodel({
  this.postid,
  this.email,
  this.name,
  this.body,
  this.commentid,
});

factory Commentmodel.fromjson(Map<String,dynamic>comment){
return Commentmodel(
commentid: comment["id"],
email:  comment["email"],
postid: comment["postid"],
name: comment["name"],
body: comment["body"],

);

}
}