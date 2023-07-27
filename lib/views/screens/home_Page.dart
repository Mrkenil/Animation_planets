import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../modals/Solar_system_modal.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          FutureBuilder(
            future: rootBundle.loadString("lib/json.json"),
            builder: (context, snapshot) {
              Map data = jsonDecode(snapshot.data!);
              List a = data["allplanet"];
              List<PlanetInfo> planets =
                  a.map((e) => PlanetInfo.fromJson(e)).toList();

              return ListView.builder(
                itemCount: planets.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: planets[index].height,
                          width: planets[index].width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/${planets[index].iconImage}"),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("ditail_page",
                              arguments: planets[index]);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}

class SolarSystemPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final sunRadius = 70.0;
    final sunCenter = Offset(195, 110);

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
