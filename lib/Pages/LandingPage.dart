import 'package:flutter/material.dart';
import 'package:solmusic/Style/Style.dart';

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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: MaterialButton(
                                height: size.height * 0.09,
                                minWidth: size.width * 0.15,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                ),
                                onPressed: () {},
                                color: Color(0xffFC0254),
                                child: Text(
                                  "Download Now".toUpperCase(),
                                  style: ThemText.buttonText,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: MaterialButton(
                                height: size.height * 0.09,
                                minWidth: size.width * 0.15,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26.0),
                                ),
                                onPressed: () {},
                                color: Color(0xff383B70),
                                child: Text(
                                  "Start Free Trail".toUpperCase(),
                                  style: ThemText.buttonText,
                                ),
                              ),
                            )
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
                  width: size.width/2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Wrap(
                      children: [
                        Text("Unlimited Access to 100K tracks",
                        style: ThemText.bigTextTitle,
                        )
                      ],
                    ),
                  ),
                ),
                 Container(
                  width: size.width/2,
                  color: Colors.yellow,
                )
              ],
            ),
          ),

          //How it works
          Container(
            height: size.height * 0.86,
            width: size.width,
            color: Color(0xff0A183D),
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
