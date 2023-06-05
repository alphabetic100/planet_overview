import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class PlanetDetailPage extends StatefulWidget {
  const PlanetDetailPage({
    super.key,
    required this.backButton,
    required this.planetTitle,
    required this.planetSubtitle,
    required this.planetDetail,
    required this.planetDistacefromsun,
    required this.planetRotation,
    required this.planetHasMoon,
    required this.planetAverageOrbitalSpeed,
  });
  final bool backButton;
  final String? planetTitle;
  final String? planetSubtitle;
  final String? planetDetail;
  final String? planetDistacefromsun;
  final String? planetRotation;
  final String? planetHasMoon;
  final String? planetAverageOrbitalSpeed;

  @override
  State<PlanetDetailPage> createState() => _PlanetDetailPageState();
}

class _PlanetDetailPageState extends State<PlanetDetailPage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  //
                  //
                  //
                  // ⁡⁢⁢⁢​‌‌‌𝟭𝘀𝘁 𝗽𝗮𝗿𝘁 𝗼𝗳 𝘂𝗶 𝗽𝗮𝗴𝗲​⁡
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    color: const Color.fromARGB(255, 4, 11, 40),
                    child: SafeArea(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          //
                          //
                          //
                          //​‌‌‍⁡⁢⁢⁣𝙥͟𝙡͟𝙖͟𝙣͟𝙚͟𝙩 𝙩͟𝙞͟𝙩͟𝙡͟𝙚⁡​
                          if (widget.planetTitle != null)
                            SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: DefaultTextStyle(
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                  ),
                                  child: AnimatedTextKit(
                                      repeatForever: true,
                                      isRepeatingAnimation: true,
                                      animatedTexts: [
                                        WavyAnimatedText(
                                          "${widget.planetTitle}",
                                          textAlign: TextAlign.center,
                                        )
                                      ]),
                                ),
                              ),
                            )
                          else
                            Container(),
                          //
                          //
                          //
                          //⁡⁣⁢⁢​‌‌‌ ⁡⁢⁣⁢​𝙋𝙡𝙖𝙣𝙚𝙩 𝙨𝙪𝙗𝙩𝙞𝙩𝙡𝙚
                          //⁡⁡
                          if (widget.planetSubtitle != null)
                            SizedBox(
                              height: 35,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  widget.planetSubtitle!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 2,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          else
                            Container(),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Scrollbar(
                                  child: SingleChildScrollView(
                                    controller: _scrollController,
                                    child: AnimatedTextKit(
                                        onFinished: () {
                                          _scrollController
                                              .animateTo(
                                            _scrollController
                                                .position.maxScrollExtent,
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.easeOut,
                                          )
                                              .then((value) {
                                            Future.delayed(
                                                const Duration(
                                                    milliseconds: 500), () {
                                              _scrollController.animateTo(
                                                0.0,
                                                duration: const Duration(
                                                    milliseconds: 500),
                                                curve: Curves.easeOut,
                                              );
                                            });
                                          });
                                        },
                                        totalRepeatCount: 1,
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              "${widget.planetDetail}",
                                              textStyle: const TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              )),
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              '(Scroll Down to more)',
                              style: TextStyle(
                                color: Colors.green.shade200,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //
                  //
                  //
                  // ​‌‌‌⁡⁢⁣⁢𝟮𝗱 𝗽𝗮𝗿𝘁 𝗼𝗳 𝘂𝗶⁡​
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    color: const Color.fromARGB(255, 8, 19, 59),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          // ​‌‌‍⁡⁣⁣⁢𝗖͟𝗼͟𝗻͟𝘁͟𝗮͟𝗶͟𝗻͟𝗲͟𝗿 𝟭⁡​
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 11, 25, 75),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ],
                              ),

                              //
                              //planet distance
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      size: 30,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 10,
                                          spreadRadius: 3,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text(
                                            "Distance form sun",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.white,
                                                  blurRadius: 7,
                                                  spreadRadius: 3,
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "${widget.planetDistacefromsun}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 7,
                                                  spreadRadius: 3,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // ​‌‌‍⁡⁣⁣⁢𝗖͟𝗼͟𝗻͟𝘁͟𝗮͟𝗶͟𝗻͟𝗲͟𝗿 ⁡⁣⁣⁢𝟮⁡⁡​
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 11, 25, 75),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(
                                      MaterialCommunityIcons.sync_icon,
                                      size: 30,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 8,
                                          spreadRadius: 3,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text(
                                            "Rotation period",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.white,
                                                  blurRadius: 8,
                                                  spreadRadius: 3,
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "${widget.planetRotation}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.white,
                                                  blurRadius: 7,
                                                  spreadRadius: 3,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // ​‌‌‍⁡⁣⁣⁢𝗖͟𝗼͟𝗻͟𝘁͟𝗮͟𝗶͟𝗻͟𝗲͟𝗿 ⁡⁣⁣⁢⁡⁣⁢⁣𝟛⁡⁡⁡​
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 11, 25, 75),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(
                                      MaterialCommunityIcons.moon_full,
                                      size: 30,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 8,
                                          spreadRadius: 3,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text(
                                            "Moon",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.white,
                                                  blurRadius: 10,
                                                  spreadRadius: 3,
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "${widget.planetHasMoon}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 10,
                                                  spreadRadius: 3,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // ​‌‌‍⁡⁣⁣⁢𝗖͟𝗼͟𝗻͟𝘁͟𝗮͟𝗶͟𝗻͟𝗲͟𝗿 ⁡⁣⁣⁢⁡⁣⁣⁢𝟰⁡⁡⁡​
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 11, 25, 75),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Icon(
                                      MaterialCommunityIcons.speedometer,
                                      size: 30,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 8,
                                          spreadRadius: 3,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Text(
                                            "Average orbital speed",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.white,
                                                  blurRadius: 8,
                                                  spreadRadius: 3,
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "${widget.planetAverageOrbitalSpeed}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.white,
                                                  blurRadius: 8,
                                                  spreadRadius: 3,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            widget.backButton
                ? Positioned(
                    top: 10,
                    left: 20,
                    child: SafeArea(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 8, 19, 59),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 4,
                              spreadRadius: 3,
                            ),
                          ],
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              CupertinoIcons.back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
