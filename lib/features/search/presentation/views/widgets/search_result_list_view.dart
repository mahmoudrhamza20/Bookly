import 'package:flutter/material.dart';


class SearchResultListView extends StatelessWidget
{
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
         // child: BestSellerListViewItem(),
          child: Text('data'),
        );
      },

    );
  }
}