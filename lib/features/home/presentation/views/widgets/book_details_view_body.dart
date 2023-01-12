import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .26),
                  child: const CustomBookItem(imageUrl: 'https://images.unsplash.com/photo-1589998059171-988d887df646?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1776&q=80',),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text('The Jungle Book ',
                    style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 5,
                ),
                Opacity(
                    opacity: 0.7,
                    child: Text('Rudyard Kipling ',
                      style: Styles.textStyle18.copyWith(
                          fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),)),
                const SizedBox(
                  height: 8,
                ),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center,rating: 4,count: 10,),
                const SizedBox(height: 20,),
                const BookAction(),
                const Expanded(child:  SizedBox(height: 25,)),
                Align(alignment: Alignment.centerLeft,
                    child: Text('You can also like',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),
                const SizedBox(height: 15,),
                const  SimilarBookListView(),
                const SizedBox(height: 25,),
              ],
            ),
          ),
        )
      ],
    );
  }
}


