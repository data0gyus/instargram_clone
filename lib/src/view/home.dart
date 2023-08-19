import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_instargram_clone/src/widget/feed.dart';
import 'package:flutter_instargram_clone/src/widget/image_avatar.dart';
import 'package:flutter_instargram_clone/src/widget/image_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            _appBar(),
            _story(),
            _body(),
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return SliverAppBar(
      floating: true,
      title: ImageData(path: ImagePath.logo, width: 350),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ImageData(path: ImagePath.activeOff),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ImageData(path: ImagePath.directMessage),
        ),
      ],
    );
  }

  Widget _story() {
    return SliverToBoxAdapter(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageAvatar(
                          width: 75,
                          url:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlrZqTCInyg6RfYC7Ape20o-EWP1EN_A8fOA&usqp=CAU',
                          type: AvatarType.MYSTORY),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("My Story"),
                    ),
                  ],
                ),
                ...List.generate(
                    20,
                    (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const ImageAvatar(
                                width: 75,
                                url:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP6-MfoJ0MLH3ZH7oIyNvP_PfLRoYI-ZgPeQ&usqp=CAU',
                                type: AvatarType.STORY),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('$index user'),
                            ),
                          ],
                        )))
              ],
            )));
  }

  Widget _body() {
    return SliverList.builder(
        itemBuilder: (_, index) => Feed(
              userName: '_980204',
              urls: [
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLYcPfJQ255xRKkVat9T-UYlX0KhImj41oWA&usqp=CAU',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnAQ1TUA-nTBdtmpgdYyNZ86d6x_L3IyQFKg&usqp=CAU',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5uX6OFAY6yGyLf0vEbR5iRYPblHgRfUyOGw&usqp=CAU',
              ],
              countLikes: Random().nextInt(50),
              countComment: Random().nextInt(100),
            ));
  }
}
