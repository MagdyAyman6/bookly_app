import 'package:dartz/dartz.dart';

import '../models/books.dart';

abstract class HomeRepo {
 Future<Either<String,List<Books>>> getAllBooks(

     );
 Future<Either<String,List<Books>>> getBestBooks();
}