import 'package:dio/dio.dart';

class Network{
  Future<List<dynamic>> getposts()async{
    final respons= await Dio().get('https://jsonplaceholder.typicode.com/posts');
    return respons.data;
  }
  
  Future<List<dynamic>> getcomments({required int postId}) async{
    final respons=await Dio().get('https://jsonplaceholder.typicode.com/posts/$postId/comments');
    return respons.data;
  }
}