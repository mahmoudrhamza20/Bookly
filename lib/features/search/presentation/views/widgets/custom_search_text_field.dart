
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: (){},

      decoration:  InputDecoration(
        suffixIcon: Opacity(
          opacity: 0.8,
          child: IconButton(onPressed: (){},icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ), ),
        ),
        hintText: 'Search',
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),

      ) ,
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:const BorderSide(
          color: Colors.white
          ,)
    );
  }
}