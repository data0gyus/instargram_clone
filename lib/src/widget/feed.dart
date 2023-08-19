import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instargram_clone/src/widget/comment_sheet.dart';
import 'package:flutter_instargram_clone/src/widget/image_avatar.dart';
import 'package:flutter_instargram_clone/src/widget/image_data.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Feed extends StatefulWidget {
  final String userName;
  final List<String> urls;
  final int countLikes;
  final int countComment;
  const Feed(
      {super.key,
      required this.userName,
      required this.urls,
      required this.countLikes,
      required this.countComment});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _header(),
        _images(),
        _options(),
        _comment(),
      ],
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: ImageAvatar(
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlrZqTCInyg6RfYC7Ape20o-EWP1EN_A8fOA&usqp=CAU',
                  type: AvatarType.BASIC),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.userName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ImageData(
            path: ImagePath.postMoreIcon,
            width: 70,
          ),
        ),
      ],
    );
  }

  Widget _images() {
    return CarouselSlider.builder(
        itemCount: widget.urls.length,
        itemBuilder: (context, index, pageIndex) => SizedBox(
              width: Get.size.width,
              height: Get.size.width,
              child: CachedNetworkImage(
                imageUrl: widget.urls[index],
                fit: BoxFit.cover,
              ),
            ),
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
          initialPage: 0,
          aspectRatio: 1,
          viewportFraction: 1,
          enableInfiniteScroll: false,
        ));
  }

  Widget _options() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(path: ImagePath.activeOff),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: showCommentSheet,
                  child: ImageData(path: ImagePath.replyIcon)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(path: ImagePath.directMessage),
            ),
          ],
        ),
        AnimatedSmoothIndicator(
          activeIndex: _current,
          count: widget.urls.length,
          effect: const ScrollingDotsEffect(
            activeDotScale: 1.0,
            activeDotColor: Colors.blue,
            activeStrokeWidth: 1.0,
            dotWidth: 8.0,
            dotHeight: 8.0,
          ),
        ),
        Row(
          children: [
            Opacity(
              opacity: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageData(
                  path: ImagePath.bookMarkOffIcon,
                ),
              ),
            ),
            Opacity(
              opacity: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageData(
                  path: ImagePath.bookMarkOffIcon,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                path: ImagePath.bookMarkOffIcon,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _comment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${widget.countLikes} likes',
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpandableText(
            'This is Content. \nThis is Content. \nThis is Content. \nThis is Content. \nThis is Content. \n',
            expandText: 'more',
            linkColor: Colors.grey,
            prefixText: widget.userName,
            prefixStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {},
            child: Text('View all ${widget.countComment} comments',
                style: const TextStyle(color: Colors.grey)),
          ),
        ),
        Row(
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageAvatar(
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlrZqTCInyg6RfYC7Ape20o-EWP1EN_A8fOA&usqp=CAU',
                  type: AvatarType.BASIC),
            ),
            GestureDetector(
              onTap: showCommentSheet,
              child: const Text(
                'Add a comment...',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        )
      ],
    );
  }

  void showCommentSheet() => showModalBottomSheet(
      backgroundColor: Colors.white,
      showDragHandle: true,
      enableDrag: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
      )),
      context: context,
      builder: (context) => const CommentSheet());
}
