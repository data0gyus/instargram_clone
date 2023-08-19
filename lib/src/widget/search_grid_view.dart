import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchGridView extends StatelessWidget {
  final Widget child;
  const SearchGridView({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final List<QuiltedGridTile> pattern1 = [
      const QuiltedGridTile(1, 1),
      const QuiltedGridTile(1, 1),
      const QuiltedGridTile(2, 1),
      const QuiltedGridTile(1, 1),
      const QuiltedGridTile(1, 1),
    ];

    final List<QuiltedGridTile> pattern2 = [
      const QuiltedGridTile(2, 1),
      const QuiltedGridTile(1, 1),
      const QuiltedGridTile(1, 1),
      const QuiltedGridTile(1, 1),
      const QuiltedGridTile(1, 1),
    ];

    final List<QuiltedGridTile> pattern3 = [
      const QuiltedGridTile(2, 2),
      const QuiltedGridTile(1, 1),
      const QuiltedGridTile(1, 1),
    ];

    return SliverGrid.builder(
        gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 3,
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            pattern: [
              ...pattern1,
              ...pattern2,
              ...pattern1,
              ...pattern3,
              ...pattern1,
              ...pattern2,
              ...pattern1,
              ...pattern2,
            ]),
        itemCount: 50,
        itemBuilder: (context, index) => Container(
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: child,
            ));
  }
}
