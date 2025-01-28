import 'package:bookly_app_clean_arch/Features/home/presentation/views/widget/featured_List_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: FeaturedListViewItem());
  }
}
