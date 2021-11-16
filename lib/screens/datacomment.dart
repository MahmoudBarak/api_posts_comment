import 'package:api_posts_comment/models/commentmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Comments extends StatefulWidget {
  final Commentmodel comment;
  const Comments({Key? key,required this.comment}) : super(key: key);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Card(
        elevation: 5,
        child:ListTile(
          leading: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiMjrgHGPBoabJJZsnI1IUSurLf9FQLzRenQ&usqp=CAU'),
          ),
          title: Text(widget.comment.name!),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('20m'),
              SizedBox(height:20 ,),
              Text(widget.comment.body!)
            ],
          ),
          trailing: IconButton(onPressed:(){} ,icon: Icon(Icons.more_horiz_rounded), ),
        ) ,
      ),
    );
  }
}
