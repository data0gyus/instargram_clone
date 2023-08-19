import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instargram_clone/src/view/search_focus.dart';
import 'package:flutter_instargram_clone/src/widget/search_grid_view.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _appBar(),
          _body(),
        ],
      ),
    );
  }

  Widget _body() {
    return SearchGridView(
        child: CachedNetworkImage(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqFf3SLfpHiCYa7Sz7F0-pnwsPAego0pkajg&usqp=CAU',
            fit: BoxFit.cover));
  }

  Widget _appBar() {
    return SliverAppBar(
      title: InkWell(
        onTap: () {
          Get.to(() => const SearchFocus(), transition: Transition.fadeIn);
        },
        onLongPress: () {
          Get.to(() => const SearchFocus(), transition: Transition.fadeIn);
        },
        highlightColor: Colors.black12,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(8.0)),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Icon(Icons.search, color: Color(0xff7d7d7d), size: 20),
              ),
              Text(
                'Search',
                style: TextStyle(color: Color(0xff7d7d7d), fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
