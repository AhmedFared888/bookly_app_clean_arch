import 'package:bookly_app_clean_arch/Core/utils/styles.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/featured_books_list_view.dart';
import 'package:bookly_app_clean_arch/constants.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 49,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}
