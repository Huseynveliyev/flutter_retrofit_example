
import 'package:flutter_retrofit_example/model/post_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('posts')
  Future<List<PostModel>> getPosts();
 
 //heleki atilmayib sorgu
  @POST("/post")
  Future<String> sendPostRequest(@Body() PostModel postModel);
}
