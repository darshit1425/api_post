import 'package:api_post/untils/api_helper.dart';
import 'package:flutter/material.dart';

class Post_Screen extends StatefulWidget {
  const Post_Screen({Key? key}) : super(key: key);

  @override
  State<Post_Screen> createState() => _Post_ScreenState();
}

class _Post_ScreenState extends State<Post_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ApiHelper apiHelper = ApiHelper();
              apiHelper.postApiCall();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            child: Text("API"),
          ),
        ),
      ),
    );
  }
}
