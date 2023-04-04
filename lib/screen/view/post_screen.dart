import 'package:api_post/screen/provider/api_provider.dart';
import 'package:api_post/untils/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Post_Screen extends StatefulWidget {
  const Post_Screen({Key? key}) : super(key: key);

  @override
  State<Post_Screen> createState() => _Post_ScreenState();
}

class _Post_ScreenState extends State<Post_Screen> {
  Api_Provider? ProviderT;
  Api_Provider? ProviderF;

  @override
  Widget build(BuildContext context) {
    ProviderT = Provider.of<Api_Provider>(context, listen: true);
    ProviderF = Provider.of<Api_Provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                ProviderF!.postApiCall();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: Text("API"),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${ProviderT!.postList[index].title}"),
                    leading: Text("${ProviderT!.postList[index].id}"),
                    subtitle: Text("${ProviderT!.postList[index].body}"),
                  );
                },
                itemCount: ProviderF!.postList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
