import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, this.mainAxisAlignment=  MainAxisAlignment.start, required this.rating, required this.count}) : super(key: key);
final  MainAxisAlignment mainAxisAlignment ;
final dynamic rating ;
final int count ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),size: 16,),
        const SizedBox(width: 6.5,),
         Text(rating.toString(),style: Styles.textStyle16,),
        const SizedBox(width: 6.5,),
        Opacity(opacity:0.5,child: Text('($count)',style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600,)))
      ],
    );
  }
}