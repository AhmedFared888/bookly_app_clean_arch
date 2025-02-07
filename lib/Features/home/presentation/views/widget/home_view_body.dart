import 'package:bookly_app_clean_arch/Core/utils/styles.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/app_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kBookDetailsView);
                },
                child: const FeaturedBooksListView(),
              ),
              const SizedBox(
                height: 49,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
