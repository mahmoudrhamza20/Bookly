
import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: CustomBookItem(),
          );
        },),
    );
  }
}