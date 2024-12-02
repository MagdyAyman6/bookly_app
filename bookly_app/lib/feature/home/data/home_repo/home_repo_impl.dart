import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/home_repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../models/books.dart';

class HomeRepoImpl implements HomeRepo{
  ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<String, List<Books>>> getAllBooks() async {
    try {
      var data = await apiService.get("/v1/volumes?q=computer science");
      List<Books> books =[];
      for(var item in data["items"]){
        books.add(Books.fromJson(item));
      }
      return Right(books);
    }  catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Books>>> getBestBooks() async {
    try {
      var data = await apiService.get("/v1/volumes?Filtering=free-ebooks&q=subject:programming");
      List<Books> books =[];
      for(var item in data["items"]){
        books.add(Books.fromJson(item));
      }
      return Right(books);
    }  catch (e) {
      return left(e.toString());
    }
  }

}