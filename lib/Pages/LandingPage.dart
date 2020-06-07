import 'package:flutter/material.dart';
import 'package:solmusic/Style/Style.dart';
import 'package:solmusic/Widget/RoundedButton.dart';
import '../Style/Style.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          //For Desktop Screen
          return DesktopPage();
        } else if (constraints.maxWidth >= 800 &&
            constraints.maxWidth <= 1200) {
          //for Tablet Screen
          return DesktopPage();
        } else {
          //for mobile Screen
          return MobilePage();
        }
      },
    );
  }
}

class DesktopPage extends StatefulWidget {
  @override
  _DesktopPageState createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  Widget customFlexible(String text, String subText, var icon) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffF24854),
              radius: 32.0,
              child: Icon(icon, color: Colors.white, size: 28.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              text,
              style: ThemText.createText,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              subText,
              style: ThemText.howitworkDec,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //Home Music for everyone
          Container(
            height: size.height,
            width: size.width,
            color: Color(0xff0A183D),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  width: size.width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Music ",
                                  style: ThemText.homePinkTitle,
                                ),
                                Text(
                                  "for",
                                  style: ThemText.homewhiteTitle,
                                ),
                              ],
                            ),
                            Text(
                              "everyone.",
                              style: ThemText.homewhiteTitle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: size.width * 0.40,
                            alignment: Alignment.center,
                            child: Wrap(
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.",
                                  style: ThemText.homeDescTitle,
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 48.0, vertical: 16.0),
                        child: Row(
                          children: [
                            RoundedButton(
                              color: Color(0xffFC0254),
                              textTitle: "download now",
                            ),
                            RoundedButton(
                              color: Color(0xff383B70),
                              textTitle: "start free trial",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width / 2,
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Image(
                      image: AssetImage("images/pic1.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Unlimited Access
          Container(
            height: size.height * 0.74,
            width: size.width,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width / 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Wrap(
                      children: [
                        Text(
                          "Unlimited Access to 100K tracks",
                          style: ThemText.bigTextTitle,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.",
                              style: ThemText.describtionTex,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22.0,
                      ),
                      RoundedButton(
                        color: Color(0xffF24854),
                        textTitle: "try it now",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //How it works
          Container(
            height: size.height * 0.86,
            width: size.width,
            color: Color(0xff0A183D),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.46,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "How it works",
                        style: ThemText.whititleText,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customFlexible(
                        "Create an account",
                        "Lorem ipsum dolor sit amet, consectetur adipi-scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida.",
                        Icons.person_pin,
                      ),
                       customFlexible(
                        "Choose a plan",
                        "Lorem ipsum dolor sit amet, consectetur adipi-scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida.",
                        Icons.queue_play_next,
                      ), 
                       customFlexible(
                        "Download Music",
                        "Lorem ipsum dolor sit amet, consectetur adipi-scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum sus-pendisse ultrices gravida.",
                        Icons.library_music,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //Our Concept
          Container(
              height: size.height * 1.20,
              width: size.width,
              color: Colors.white),

          //Subscription
          Container(
            height: size.height,
            width: size.width,
            color: Color(0xff0A183D),
          ),

          //People
          Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
          ),

          //Footer
          Container(
            height: size.height * 0.60,
            width: size.width,
            color: Color(0xff0A183D),
          ),
        ],
      ),
    );
  }
}

class MobilePage extends StatefulWidget {
  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
