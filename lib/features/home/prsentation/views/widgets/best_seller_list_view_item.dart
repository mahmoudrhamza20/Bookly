
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 120,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                  )),
            ),
          ),
        ),
        const SizedBox(width: 30,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child:  Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(fontFamily: kLobsterTwo),
                ),
              ),
              const SizedBox(height: 5,),
              const Text('J.K. Rowing ',style:Styles.textStyle14),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Text('19.99 €',style:Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)),
                  const Spacer(),
                  const  BookRating(),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}