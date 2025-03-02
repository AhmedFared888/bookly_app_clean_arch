import 'package:bookly_app_clean_arch/Core/utils/styles.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/book_actions.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/similer_books_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const SizedBox(
                height: 33,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .25),
                child: const CustomBookImage(
                  image: '',
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              const Text(
                'The Jungel Book',
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 37,
              ),
              const BookActions(),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: SimilerBooksListView(),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        )
      ],
    );
  }
}
