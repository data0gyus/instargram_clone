import 'package:flutter/material.dart';
import 'package:flutter_instargram_clone/src/controller/bottom_nav_controller.dart';
import 'package:flutter_instargram_clone/src/widget/image_avatar.dart';
import 'package:flutter_instargram_clone/src/widget/image_data.dart';

import 'package:get/get.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        onWillPop: controller.popAction,
        child: Scaffold(
          body: _body(),
          bottomNavigationBar: _bottom(),
        ),
      ),
    );
  }

  Widget _body() {
    return IndexedStack(
      index: controller.index,
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.black,
        ),
      ],
    );
  }

  Widget _bottom() {
    return BottomNavigationBar(
        currentIndex: controller.index,
        onTap: controller.changeIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: ImageData(path: ImagePath.homeOff),
              activeIcon: ImageData(path: ImagePath.homeOn),
              label: 'home'),
          BottomNavigationBarItem(
              icon: ImageData(path: ImagePath.searchOff),
              activeIcon: ImageData(path: ImagePath.searchOn),
              label: 'search'),
          BottomNavigationBarItem(
              icon: ImageData(path: ImagePath.upload),
              activeIcon: ImageData(path: ImagePath.upload),
              label: 'upload'),
          BottomNavigationBarItem(
              icon: ImageData(path: ImagePath.reelsOff),
              activeIcon: ImageData(path: ImagePath.reelsOn),
              label: 'reels'),
          const BottomNavigationBarItem(
              icon: ImageAvatar(
                type: AvatarType.OFF,
                url:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlrZqTCInyg6RfYC7Ape20o-EWP1EN_A8fOA&usqp=CAU',
              ),
              activeIcon: ImageAvatar(
                  type: AvatarType.On,
                  url:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlrZqTCInyg6RfYC7Ape20o-EWP1EN_A8fOA&usqp=CAU'),
              label: 'my page'),
        ]);
  }
}
