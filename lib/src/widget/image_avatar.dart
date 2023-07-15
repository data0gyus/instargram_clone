import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum AvatarType { On, OFF }

class ImageAvatar extends StatelessWidget {
  final String url;
  final AvatarType type;
  const ImageAvatar({super.key, required this.url, required this.type});

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.On:
        return _onAvatar();
      case AvatarType.OFF:
        return _offAvatar();
    }
  }

  Widget _onAvatar() {
    return Container(
        padding: const EdgeInsets.all(1.5),
        decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: Container(
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: _basic()));
  }

  Widget _offAvatar() {
    return Container(
        padding: const EdgeInsets.all(2.5),
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: _basic());
  }

  Widget _basic() {
    return SizedBox(
      width: 70 / Get.mediaQuery.devicePixelRatio,
      height: 70 / Get.mediaQuery.devicePixelRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(65.0),
        child: CachedNetworkImage(imageUrl: url, fit: BoxFit.cover),
      ),
    );
  }
}
