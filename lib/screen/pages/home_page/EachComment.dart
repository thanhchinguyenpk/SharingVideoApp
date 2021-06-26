import 'package:flutter/material.dart';

class Eachcomment extends StatelessWidget {
  final String name;
  final String url;
  final String comment;

  Eachcomment(this.name, this.url, this.comment);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(url),
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        comment,
        style: TextStyle(fontSize: 13),
      ),
      trailing: Icon(Icons.favorite_border),
    );
  }
}
