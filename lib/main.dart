
import 'package:api_posts_comment/blocs/post_bloc.dart';
import 'package:api_posts_comment/screens/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=>PostsBloc(initialState:Intilapoststate() ))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Post(),
      ),
    );
  }
}
