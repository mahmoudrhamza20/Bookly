import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .26),
            child: const CustomBookItem(),
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
          const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
          const SizedBox(height: 20,),
          const BookAction()
        ],
      ),
    );
  }
}

