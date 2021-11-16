import 'package:api_posts_comment/blocs/post_bloc.dart';
import 'package:api_posts_comment/models/post.model.dart';
import 'package:api_posts_comment/network/network_helper.dart';
import 'package:api_posts_comment/screens/dataposts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  void initState() {
    super.initState();
    context.read<PostsBloc>().add(GetPostEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Posts'),
    actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout))

    ],

    ),
    body:BlocBuilder<PostsBloc,PostState>(
      builder: (context,state){
        if(state is LodingState){
          return Center(child: CircularProgressIndicator(),);
        }
          if (state is GetPostState) {
            return ListView.builder(itemBuilder: (context,index){
              final post=PostsModel.fromjson(state.posts[index]);
              return Posts(post:post);
            });

          }
          return SizedBox();
      },
    )
    );}
}
