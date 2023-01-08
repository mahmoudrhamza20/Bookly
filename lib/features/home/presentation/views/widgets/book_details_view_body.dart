import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .24),
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 30,
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
      ],
    );
  }
}
