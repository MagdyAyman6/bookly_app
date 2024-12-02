import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/home_repo/home_repo_impl.dart';
import 'package:bookly_app/feature/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/manager/best_seller_cubit/best_seller_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constant.dart';
import 'feature/splash/presentation/views/splash_screen.dart';

main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  AllBooksCubit(HomeRepoImpl(ApiService(Dio())))..getAllBooks(),
          ),
          BlocProvider(
              create: (context) =>
                  BestSellerBooksCubit(HomeRepoImpl(ApiService(Dio())))..getBestSellerBooks(),
          ),

        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            appBarTheme: AppBarTheme(backgroundColor: backgroundColor),
            scaffoldBackgroundColor: backgroundColor,
          ),
          home: const Scaffold(
            body: SplashScreen(),
          ),
        ));
  }
}
