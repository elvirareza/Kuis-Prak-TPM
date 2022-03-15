import 'top_album.dart';
import 'package:flutter/material.dart';
import 'package:kuis/top_album.dart';

class ListLagu extends StatelessWidget {
  final int index;
  const ListLagu({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TopAlbum album = topAlbumList[index];
    return Scaffold(
      appBar: AppBar(
        title: Text(album.albumName),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(album.imageUrls)
              )
          )
      ),
    );
  }
}
