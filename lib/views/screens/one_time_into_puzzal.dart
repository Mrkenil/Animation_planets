import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pr6/provider/all_provider.dart';
import 'package:provider/provider.dart';

import '../../utils/list.dart';

class one_time_puzzal extends StatefulWidget {
  const one_time_puzzal({super.key});

  @override
  State<one_time_puzzal> createState() => _one_time_puzzalState();
}

class _one_time_puzzalState extends State<one_time_puzzal>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  bool _isAnimating = true;
  chack() {
    if (Provider.of<all_pro>(context, listen: true).p0) {
      if (Provider.of<all_pro>(context, listen: true).p1) {
        if (Provider.of<all_pro>(context, listen: true).p2) {
          if (Provider.of<all_pro>(context, listen: true).p3) {
            if (Provider.of<all_pro>(context, listen: true).p4) {
              if (Provider.of<all_pro>(context, listen: true).p5) {
                if (Provider.of<all_pro>(context, listen: true).p6) {
                  if (Provider.of<all_pro>(context, listen: true).p7) {
                    if (Provider.of<all_pro>(context, listen: true).p8) {
                      Provider.of<all_pro>(context, listen: false).all(true);
                      check(Provider.of<all_pro>(context, listen: false)
                          .all_true);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  naviget() {
    Navigator.of(context).pushReplacementNamed('home_page', result: false);
  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 8),
      upperBound: 6,
      lowerBound: 0,
    )..repeat();
    animationController.addListener(() {
      setState(() {});
    });
    // _animationController = AnimationController(
    //   vsync: this,
    //   duration: Duration(seconds: 200),
    //   upperBound: 6,
    //   lowerBound: 0,
    // )..repeat();
    // _animationController.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  void _toggleAnimation() {
    setState(() {
      if (_isAnimating) {
        animationController.stop();
      } else {
        animationController.repeat();
      }
      _isAnimating = !_isAnimating;
    });
  }

  @override
  Widget build(BuildContext context) {
    // for (int i = 0; i < 8;) {
    //   int intValue = Random().nextInt(9);
    //   if (added.length == 0) {
    //     added.add(intValue);
    //     i++;
    //   } else {
    //     for (int j = 0; j <= added.length;) {
    //       if (intValue == added[j]) {
    //       } else {
    //         added.add(intValue);
    //         i++;
    //       }
    //     }
    //   }
    // }
    // print(added);

    return Scaffold(
      body: Scrollable(
        viewportBuilder: (BuildContext context, ViewportOffset position) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.wallpapersafari.com/95/91/gHufOW.jpg"),
                      opacity: 1,
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: CustomPaint(
                  painter: SolarSystemPainter(), // Use the custom painter here
                  size: Size(double.infinity, double.infinity),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: added
                      .map(
                        (e) => Draggable(
                          data: e,
                          feedback: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/${planets[e]}"),
                              ),
                            ),
                          ),
                          childWhenDragging: Container(
                            height: 10,
                            width: 10,
                          ),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/${planets[e]}"),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    DragTarget(
                      onWillAccept: (val) {
                        return val == 0;
                      },
                      onAccept: (val) {
                        Provider.of<all_pro>(context, listen: false).P0(true);
                        chack();
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/sun.png"),
                            opacity:
                                (Provider.of<all_pro>(context, listen: true).p0)
                                    ? 1
                                    : 0.2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DragTarget(
                      onWillAccept: (val) {
                        return val == 1;
                      },
                      onAccept: (val) {
                        Provider.of<all_pro>(context, listen: false).P1(true);
                        chack();
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/mercury.png"),
                            opacity:
                                (Provider.of<all_pro>(context, listen: true).p1)
                                    ? 1
                                    : 0.2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DragTarget(
                      onWillAccept: (val) {
                        return val == 2;
                      },
                      onAccept: (val) {
                        Provider.of<all_pro>(context, listen: false).P2(true);
                        chack();
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/venus.png"),
                            opacity:
                                (Provider.of<all_pro>(context, listen: true).p2)
                                    ? 1
                                    : 0.2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DragTarget(
                      onWillAccept: (val) {
                        return val == 3;
                      },
                      onAccept: (val) {
                        Provider.of<all_pro>(context, listen: false).P3(true);
                        chack();
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/earth.png"),
                            opacity:
                                (Provider.of<all_pro>(context, listen: true).p3)
                                    ? 1
                                    : 0.2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DragTarget(
                      onWillAccept: (val) {
                        return val == 4;
                      },
                      onAccept: (val) {
                        Provider.of<all_pro>(context, listen: false).P4(true);
                        chack();
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/mars.png"),
                            opacity:
                                (Provider.of<all_pro>(context, listen: true).p4)
                                    ? 1
                                    : 0.2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DragTarget(
                      onWillAccept: (val) {
                        return val == 5;
                      },
                      onAccept: (val) {
                        Provider.of<all_pro>(context, listen: false).P5(true);
                        chack();
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Jupiter.png"),
                            opacity:
                                (Provider.of<all_pro>(context, listen: true).p5)
                                    ? 1
                                    : 0.2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DragTarget(
                      onWillAccept: (val) {
                        return val == 6;
                      },
                      onAccept: (val) {
                        Provider.of<all_pro>(context, listen: false).P6(true);
                        chack();
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/saturn.png"),
                            opacity:
                                (Provider.of<all_pro>(context, listen: true).p6)
                                    ? 1
                                    : 0.2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DragTarget(
                      onWillAccept: (val) {
                        return val == 7;
                      },
                      onAccept: (val) {
                        Provider.of<all_pro>(context, listen: false).P7(true);
                        chack();
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/uranus.png"),
                            opacity:
                                (Provider.of<all_pro>(context, listen: true).p7)
                                    ? 1
                                    : 0.2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DragTarget(
                      onWillAccept: (val) {
                        return val == 8;
                      },
                      onAccept: (val) {
                        Provider.of<all_pro>(context, listen: false).P8(true);
                        chack();
                      },
                      builder: (context, candidateData, rejectedData) =>
                          Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/neptune.png"),
                            opacity:
                                (Provider.of<all_pro>(context, listen: true).p8)
                                    ? 1
                                    : 0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          check(true);
          Navigator.of(context)
              .pushReplacementNamed("home_page", result: false);
        },
        child: (Provider.of<all_pro>(context).all_true)
            ? Text("Next")
            : Text("Skip"),
      ),
    );
  }
}

class SolarSystemPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final sunRadius = 70.0;
    final sunCenter = Offset(195, 70);

    // Draw orbits for each planet
    final orbitPaint = Paint()
      ..color = Colors.grey.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final planetsOrbitRadii = [
      110.0,
      170.0,
      248.0,
      320.0,
      410.0,
      515.0,
      605.0,
      665.0
    ];
    for (final orbitRadius in planetsOrbitRadii) {
      canvas.drawCircle(sunCenter, orbitRadius, orbitPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
