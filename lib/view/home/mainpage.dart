import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intagram_clone/controller/postcontroller.dart';
import 'package:intagram_clone/controller/strorycontroller.dart';
import 'package:intagram_clone/model/postmodel.dart';
import 'package:intagram_clone/model/storymodel.dart';
import 'package:intagram_clone/view/home/components/posts.dart';
import 'package:intagram_clone/view/home/components/storys.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<StoryModel> usersimages = [];
  List<PostModel> posts = [];
  @override
  void initState() {
    usersimages = StoryController().ShowStrory();
    posts = PostController().showPost();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/vectores/Camera Icon.svg'),
                        SvgPicture.asset('assets/images/Instagram Logo.svg',
                            height: 30),
                        Row(
                          children: [
                            SvgPicture.asset('assets/vectores/IGTV.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset('assets/vectores/Messanger.svg'),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade800,
                    height: 2,
                  )
                ],
              ),
            ),
            Storys(usersimages: usersimages),
            Posts(posts: posts)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/vectores/Icon f (4).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/vectores/Icon f (3).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/vectores/Icon f (2).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/vectores/Icon f (1).svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/las.jpg'),
                  )),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
