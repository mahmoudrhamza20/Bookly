
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children:const [
          Expanded(
            child: CustomButton(
              text: '19.99€',
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              fontSize: 16,
              textColor: Colors.white,
              backgroundColor: Color(0xffEF8262),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(16),topRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}