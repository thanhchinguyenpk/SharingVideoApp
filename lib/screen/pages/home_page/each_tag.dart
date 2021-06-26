import 'package:flutter/material.dart';

class EachTag extends StatelessWidget {
  final String name;
  final String url;
  //final String comment;

  EachTag(this.name, this.url);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        backgroundImage: NetworkImage(url),
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      ),

    );
  }
}
