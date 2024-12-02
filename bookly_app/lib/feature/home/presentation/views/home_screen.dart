import 'package:bookly_app/feature/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_item_listview.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  BookItemListview(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      "Best Seller",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}
