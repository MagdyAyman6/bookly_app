import 'package:bookly_app/feature/selling/presentation/views/widgets/selling_app_bar.dart';
import 'package:bookly_app/feature/selling/presentation/views/widgets/selling_book_desc.dart';
import 'package:bookly_app/feature/selling/presentation/views/widgets/selling_book_item.dart';
import 'package:bookly_app/feature/selling/presentation/views/widgets/selling_button.dart';
import 'package:bookly_app/feature/selling/presentation/views/widgets/selling_similar_list_view.dart';
import 'package:flutter/material.dart';

class SellingScreen extends StatelessWidget {
  const SellingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SellingAppBar(),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SellingBookItem(),
                SizedBox(height: 20),
                SellingBookDesc(),
                SizedBox(height: 20),
                SellingButton(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: 10),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "You can also like",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                SizedBox(
                  height: 10,
                ),
                SellingSimilarListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
