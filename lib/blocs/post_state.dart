part of 'post_bloc.dart';
abstract class PostState {}
class Intilapoststate extends PostState {}
class GetPostState extends PostState{
  final List<dynamic> posts;
  GetPostState(this.posts);
}
class NoInternetConectionState extends PostState{}
class LodingState extends PostState{}