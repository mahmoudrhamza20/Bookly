import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24,right:24,top: 30,bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 20,),
          const Spacer(),
          IconButton(onPressed: (){}, icon:const Icon(Icons.search,size: 24,))
        ],
      ),
    );
  }
}