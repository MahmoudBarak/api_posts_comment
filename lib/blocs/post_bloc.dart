import 'package:api_posts_comment/network/network_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
part 'post_event.dart';
part 'post_state.dart';
class PostsBloc extends Bloc<PostEvent,PostState>{
  PostsBloc({PostState? initialState}) : super(initialState!){
    on<PostEvent>((event,emit) async{
      if(event is GetPostEvent){
        emit(LodingState());
        List<dynamic> posts= await Network().getposts();
        emit(GetPostState(posts));
      }
    });
  }

}