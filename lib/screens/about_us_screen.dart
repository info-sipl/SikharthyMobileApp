import 'package:flutter/material.dart';
import '../image_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'j6lStUVIEEo',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  bool _muted = false;
  bool _isPlayerReady = true;
  @override
  Widget build(BuildContext context) {
    //this gonna give us total height and with of our device
    return Scaffold(
      backgroundColor: Color(0xFFffa000),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          "About us",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    // SearchBar(),

                    Text(
                        '''Sikharthy Infotech Private Limited is the best Web Development Company in Kolkata. We provide Website Development, Website Designing, Content Development, and Digital Marketing services in Kolkata. 
                        Sikharthy Infotech has a dedicated and highly-skilled team of resources for all kinds of assistance.
                          Sikharthy Infotech Private Limited has a Skill Development wing where students and freshers are getting skilled to join the IT sector. Today, many of our trained candidates are working with different MNCs like TCS, CTS, ITC Infotech, and many more.
                          We aim to:
                          •	Build you perfect for Corporate World
                          •	Make you capable to handle the regular work flow of client
                          •	Fulfill the difference between theoritical knowledge and practical knowledge
                          We provide the Internship Programme, which will help to become the professional.'''),
                    SizedBox(
                      height: 35.0,
                    ),
                    Center(
                      child: Text(
                        'Our Clients',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Container(
                        child: CarouselSlider(
                      options: CarouselOptions(autoPlay: true),
                      items: imgList
                          .map((item) => Container(
                                child: Center(
                                    child: Image.asset(item,
                                        fit: BoxFit.cover, width: 1000)),
                              ))
                          .toList(),
                    )),
                    SizedBox(
                      height: 35.0,
                    ),
                    Center(
                      child: Text(
                        'Feedback',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    YoutubePlayer(
                      progressColors: ProgressBarColors(
                        handleColor: Colors.deepOrangeAccent,
                      ),
                      controller: widget._controller,
                      showVideoProgressIndicator: true,
                      liveUIColor: Colors.deepOrangeAccent,
                      bottomActions: <Widget>[
                        CurrentPosition(),
                        ProgressBar(isExpanded: true),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon:
                              Icon(_muted ? Icons.volume_off : Icons.volume_up),
                          onPressed: _isPlayerReady
                              ? () {
                                  _muted
                                      ? widget._controller.unMute()
                                      : widget._controller.mute();
                                  setState(() {
                                    _muted = !_muted;
                                  });
                                }
                              : null,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
