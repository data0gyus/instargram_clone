import 'package:flutter/material.dart';

class SearchFocus extends StatelessWidget {
  const SearchFocus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8.0),
                    gapPadding: 0),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8.0),
                    gapPadding: 0),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(8.0),
                    gapPadding: 0),
                isCollapsed: true,
                isDense: true,
                filled: true,
                fillColor: Colors.black12,
                prefixIcon: const Icon(
                  Icons.search,
                  size: 20,
                  color: Color(0xff7d7d7d),
                ),
                hintText: 'Search',
                hintStyle:
                    const TextStyle(fontSize: 18, color: Color(0xff7d7d7d))),
          ),
        ),
      ),
    );
  }
}
