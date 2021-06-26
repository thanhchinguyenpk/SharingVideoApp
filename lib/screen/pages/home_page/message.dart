import 'dart:ui';

import 'package:flutter/material.dart';
import 'EachComment.dart';
import 'data_users.dart';
import 'user.dart';
import 'each_tag.dart';

class message extends StatefulWidget {
  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<message> {
  // final arrFriend=['th1','th2','th3'];
  final CommentController = TextEditingController();

  void submitComment() {
    final enteredComment = CommentController.text;
    final String url =
        'https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
    final String name = 'thienngan_8390';
    setState(() {
      final new_comment =
          User(name: name, link_avatar: url, comment: enteredComment);

      list_comments.insert(0, new_comment);
    });

    // Navigator.of(context).pop();
    FocusScope.of(context).requestFocus(FocusNode());

    CommentController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '23 comments',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        SizedBox(height: 5),
        Expanded(
          child: ListView(
            children: [
              // arrFriend.map((eachpp) => Text(title).toList());
              //...arrFriend.map((eachpp) => Eachcomment(comment: eachpp)).toList(),
              // ListView(),
              ...list_comments
                  .map((each_user) => InkWell(
                    child: Eachcomment(
                        each_user.name, each_user.link_avatar, each_user.comment),
                    onTap: ()=>{
                    //CommentController.text+='@thanh',
                    },
                  ))
                  .toList(),
              // Eachcomment('thanh','hi','hi'),
            ],
          ),
        ),
        Container(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            color: Colors.grey.withOpacity(0.2),
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // autofocus: true,
                            controller: CommentController,
                            decoration: InputDecoration(
                              hintText: 'Type a message...',
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                onPressed: CommentController.clear,
                                icon: Icon(Icons.clear),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          child: Text(
                            '@',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                // backgroundColor: Colors.red,
                                builder: (BuildContext bc) {
                                  // height: MediaQuery.of(context).size.height * .30;
                                  return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .30,
                                      child: Column(
                                        children: [
                                         // EachTag('thanhnguyen','https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
                                          SizedBox(height: 5),
                                          Expanded(
                                            child: ListView(
                                              //reverse: true,
                                              children: [
                                                // arrFriend.map((eachpp) => Text(title).toList());
                                                //...arrFriend.map((eachpp) => Eachcomment(comment: eachpp)).toList(),
                                                // ListView(),
                                                ...list_tag
                                                    .map((each_user) => InkWell(
                                                  child: EachTag(
                                                      each_user.name, each_user.link_avatar),
                                                  onTap: ()=>{
                                                    CommentController.text=CommentController.text+ '@' +each_user.name,
                                                  Navigator.pop(context),
                                                  },
                                                ))
                                                    .toList(),
                                                // Eachcomment('thanh','hi','hi'),
                                              ],
                                            ),
                                          ),


                                          Container(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 4),
                                              color:
                                                  Colors.grey.withOpacity(0.2),
                                              child: Row(
                                                children: [
                                                  SizedBox(width: 10),
                                                  CircleAvatar(
                                                    radius: 16,
                                                    backgroundImage: NetworkImage(
                                                        'https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Expanded(
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10),
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey
                                                            .withOpacity(0.3),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            child: TextField(
                                                              autofocus: true,
                                                              controller:
                                                                  CommentController,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    'Type a message...',
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                                suffixIcon:
                                                                    IconButton(
                                                                  onPressed:
                                                                      CommentController
                                                                          .clear,
                                                                  icon: Icon(Icons
                                                                      .clear),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: submitComment,
                                                    icon: Icon(Icons.send),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ));
                                });
                          },
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: submitComment,
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/*
  Container(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            color: Colors.grey.withOpacity(0.2),
            child: Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                           // autofocus: true,
                            controller: CommentController,
                            decoration: InputDecoration(
                              hintText: 'Type a message...',
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                onPressed: CommentController.clear,
                                icon: Icon(Icons.clear),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: submitComment,
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ),
 */

void tag(BuildContext context) {}
