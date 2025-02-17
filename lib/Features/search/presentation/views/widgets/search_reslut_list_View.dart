import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchReslutListView extends StatelessWidget {
  const SearchReslutListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        },
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
