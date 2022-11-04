import 'package:flutter/material.dart';
import 'package:tikodc/Connexion.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'inscription.dart';

void main() {
  runApp(const MyApp());
}

//bottom navbardsdddd
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tikodc',
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
    );
  }
}

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Connexion(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Découvrir',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/tiktok_add.png',
              height: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_outlined),
            label: 'Boite de reception',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Moi',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        //Pour changer la couleur des icônes
        backgroundColor: Color(0xFF141518),
        //selectedItemColor c'est l'icône selectionner
        selectedItemColor: Colors.white,
        //unselectedItemColor c'est l'icône non selectionner
        unselectedItemColor: Colors.grey,
        //pour enlever l'ecriture quand on clic sur l'icone
        // showSelectedLabels: false,

        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map> tiktokItems = [
    {
      "video": "assets/videos/video_1.mp4",
    },
    {
      "video": "assets/videos/video_2.mp4",
    },
    {
      "video": "assets/videos/video_3.mp4",
    },
    {
      "video": "assets/videos/video_4.mp4",
    },
    {
      "video": "assets/videos/video_5.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: tiktokItems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              // width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.symmetric(horizontal: 5.0),
              // decoration: BoxDecoration(color: Colors.amber),
              // child: Text(
              //   'text $i',
              //   style: TextStyle(fontSize: 16.0),
              //
              // ));
              color: Color(0xFF141518),
              child: Stack(children: [
                VideoWidget(
                  videoUrl: i['video'],
                ),
                const PostContent()
              ]),
            );
          },
        );
      }).toList(),
    );
  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;

  @override
  State<VideoWidget> createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  final String videoUrl;
  _VideoWidgetState(this.videoUrl);
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class PostContent extends StatelessWidget {
  const PostContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 100,
        padding: EdgeInsets.only(top: 40),
        //
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Abonnements',
              style:
                  TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Pour toi',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: Container(
                  // color: Colors.red.withOpacity(0.5),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@hawacoulibaly',
                        style: TextStyle(
                            color: Colors.white54, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Son original-ad-montana...',
                        style: TextStyle(
                            color: Colors.white54, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Son original-ad-montana...',
                            style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              width: 80,
              //color: Colors.green,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                SizedBox(
                  height: 80,
                  //color: Colors.blue,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/photo-5.jpeg'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 80,
                  //color: Colors.yellow,
                  child: Column(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white.withOpacity(0.85),
                        size: 45,
                      ),
                      Text(
                        '25.OK',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  //color: Colors.orange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white.withOpacity(0.85),
                        size: 45,
                      ),
                      Text(
                        '354',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  //color: Colors.purple,
                  child: Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white.withOpacity(0.85),
                        size: 45,
                      ),
                      Text(
                        '453',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                //l'icône de musique
                Container(
                  height: 80,
                  // color: Colors.green,
                  child: Stack(
                    children: const [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/disc_icon.png'),
                      ),
                      // Container(
                      //   padding: const EdgeInsets.all(2),
                      //   decoration: BoxDecoration(
                      //     color: Colors.red,
                      //     borderRadius: BorderRadius.circular(20),
                      //   ),
                      //   child: const Icon(
                      //     Icons.add,
                      //     color: Colors.white,
                      //     size: 15,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    ]);
  }
}
