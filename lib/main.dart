import 'package:flutter/material.dart';
import 'package:kuis/top_album.dart';

import 'list_lagu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spoti-Pay"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          final TopAlbum album = topAlbumList[index];
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ListLagu(index: index);
                }));
               },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(album.imageUrls)
                  )
                )
              ),
          );
        },
      itemCount: topAlbumList.length,),
    );
  }
}
