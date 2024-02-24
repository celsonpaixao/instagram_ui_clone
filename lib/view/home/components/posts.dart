import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intagram_clone/model/postmodel.dart';

class Posts extends StatelessWidget {
  const Posts({
    super.key,
    required this.posts,
  });

  final List<PostModel> posts;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          var item = posts[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              clipBehavior: Clip.none,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(item.user_image),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    item.user_name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(item.post_image),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/vectores/Like.svg'),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: SvgPicture.asset(
                                            'assets/vectores/Comment.svg'),
                                      ),
                                      SvgPicture.asset(
                                          'assets/vectores/Messanger.svg'),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset('assets/vectores/Save.svg'),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '${item.user_name}  ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: item.post_description,
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.grey.shade500,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
