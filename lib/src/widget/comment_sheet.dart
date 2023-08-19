import 'package:flutter/material.dart';
import 'package:flutter_instargram_clone/src/widget/image_avatar.dart';
import 'package:flutter_instargram_clone/src/widget/image_data.dart';

class CommentSheet extends StatelessWidget {
  const CommentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          _header(),
          _body(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.0, color: Colors.black12))),
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Comments'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageData(path: ImagePath.directMessage),
          )
        ],
      ),
    );
  }

  Widget _body() {
    return Expanded(
      child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) => ListTile(
                leading: const ImageAvatar(
                    url:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLYcPfJQ255xRKkVat9T-UYlX0KhImj41oWA&usqp=CAU',
                    type: AvatarType.BASIC),
                title: Text(
                  '$index user',
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('$index comment.'),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageData(path: ImagePath.activeOff, width: 40),
                ),
              )),
    );
  }
}
