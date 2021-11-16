import 'package:api_posts_comment/models/commentmodel.dart';
import 'package:api_posts_comment/models/post.model.dart';
import 'package:api_posts_comment/network/network_helper.dart';
import 'package:api_posts_comment/screens/datacomment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Comment extends StatefulWidget {
  final int postId;
  const Comment({Key? key,required this.postId,}) : super(key: key);

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  Future <List<dynamic>>? _listOfComment;
  @override
  void initState() {
    super.initState();
    _listOfComment=Network().getcomments(postId:widget.postId );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
        future: _listOfComment,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListView.builder(itemBuilder:(context, index){
              final comments= Commentmodel.fromjson(snapshot.data![index]);
              return Comments(comment:comments);
            });
          }
         return Center(child: CircularProgressIndicator());

        },

      ),
    );
  }
}
