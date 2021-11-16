import 'package:api_posts_comment/models/post.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'comment.dart';

class Posts extends StatefulWidget {
  final PostsModel post;
  const Posts({Key? key,required this.post,}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Comment(postId:widget.post.id! ,) ));
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(5),
          child: ListTile(
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),

            ),
            title: Text(widget.post.titel!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('developer'),
                Text('20m'),
                SizedBox(height:20 ,),
                Text(widget.post.body!)
              ],
            ),
            trailing: IconButton(onPressed:(){} ,icon: Icon(Icons.more_horiz_rounded), ),

          ),
        ),
      ),
    );
  }
}
