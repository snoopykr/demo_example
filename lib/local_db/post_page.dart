// import 'package:flutter/material.dart';
// import 'package:local_db/post_helper.dart';

// class PostPage extends StatefulWidget {
//   const ({ Key? key }) : super(key: key);
  
//   @override
//   _State createState() => _State();
// }

// class _PostPageState extends State<PostPage> {
//   late List _posts = [];

//   // post 헬퍼 클래스를 초기화한다.
//   final PostHelper _postHelper = PostHelper();
  
//   // post 리스트를 조회한다.
//   Future _getPosts() async {
//     _posts = await _postHelper.getPosts();
//   }
  
//   // 새로운 post를 추가한다.
//   Future _addPost() async {
//     await _postHelper.add({
//       'title': 'new post title ...',
//       'content': 'new post content ...',
//       'created_at': '2022-01-01 00:00:00',
//     });
//   }
  
//   // 기존 post를 변경한다.
//   Future _updatePost() async {
//     await _postHelper.update({
//       'id': 1,
//       'title': 'changed post title ...',
//       'content': 'changed post content ...',
//     });
//   }
  
//   // post를 삭제한다.
//   Future _removePost() async {
//     await _postHelper.remove(1);
//   }
  
//   @override
//   void initState() {
//     super.initState();
//     _getPosts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ...,
//     );
//   }
// }
