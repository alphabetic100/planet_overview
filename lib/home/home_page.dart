import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:soler_system/home/planet_data.dart';
import 'package:soler_system/planet_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  Text titleText = const Text(
    "Solar System",
    style: TextStyle(
      fontSize: 20,
      color: Colors.blue,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CarouselSlider.builder(
            itemCount: assetName.length,
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              autoPlayInterval: const Duration(
                seconds: 2,
              ),
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              height: MediaQuery.of(context).size.height,
            ),
            itemBuilder: (context, index, realIndex) {
              return buildImage(index);
            },
          ),
          Positioned(
            top: 60,
            child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width - 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedTextKit(
                    pause: const Duration(
                      microseconds: 400,
                    ),
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "Welcome To The",
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        curve: Curves.bounceInOut,
                        // curve: Curves.easeInOutCubic,
                        speed: const Duration(milliseconds: 200),
                      ),
                      RotateAnimatedText(
                        "SOLAR SYSTEM",
                        textStyle: const TextStyle(
                            color: Colors.amber,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 30, child: buildIndicator())
        ],
      ),
    );
  }

  Widget buildImage(int index) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (context) {
              return PlanetDetailPage(
                backButton: true,
                planetTitle: planetName[index],
                planetSubtitle: planetSubtitle[index],
                planetDetail: planetDetail[index],
                planetDistacefromsun: planetDistace[index],
                planetRotation: planetRotationTime[index],
                planetHasMoon: planetHasMoon[index],
                planetAverageOrbitalSpeed: planetAveageOrbitalSpeed[index],
              );
            },
          ));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 1),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    assetName[index],
                  ),
                  fit: BoxFit.fill)),
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: assetName.length,
      effect: const WormEffect(
        dotHeight: 10,
        dotWidth: 20,
        activeDotColor: Colors.deepOrange,
        dotColor: Colors.white,
      ));
}
