import 'package:flutter/material.dart';


class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key, required this.imageUrl}) : super(key: key);
 final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageUrl),
            )),
      ),
    );
  }
}