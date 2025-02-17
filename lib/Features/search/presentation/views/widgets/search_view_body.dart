import 'package:bookly_app_clean_arch/Core/utils/styles.dart';
import 'package:bookly_app_clean_arch/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app_clean_arch/Features/search/presentation/views/widgets/search_reslut_list_View.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomSearchTextField(),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'result',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(child: SearchReslutListView()),
          ],
        ),
      ),
    );
  }
}
