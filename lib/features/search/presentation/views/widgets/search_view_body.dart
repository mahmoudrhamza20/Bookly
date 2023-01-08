import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children:const  [
          SizedBox(height: 15,),
          CustomSearchTextField(),
          SizedBox(height: 15,),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}


