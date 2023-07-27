import 'package:flutter/material.dart';
import 'package:pr6/provider/all_provider.dart';
import 'package:pr6/views/screens/ditails_page.dart';
import 'package:pr6/views/screens/home_Page.dart';
import 'package:pr6/views/screens/one_time_into_puzzal.dart';
import 'package:pr6/views/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    app(),
  );
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => all_pro()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        initialRoute: 'splash_screen',
        routes: {
          'splash_screen': (context) => splash_Screen(),
          'one_time_puzzle': (context) => one_time_puzzal(),
          'home_page': (context) => home_page(),
          'ditail_page': (context) => DetailsView(),
        },
      ),
    );
  }
}
// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
//
// void main() {
//   runApp(SolarSystemApp());
// }
//
// class SolarSystemApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(useMaterial3: true),
//       home: SolarSystemPage(),
//     );
//   }
// }
//
// class SolarSystemPage extends StatefulWidget {
//   @override
//   _SolarSystemPageState createState() => _SolarSystemPageState();
// }
//
// class _SolarSystemPageState extends State<SolarSystemPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration:
//           Duration(seconds: 1), // Adjust this duration for the simulation speed
//     )..repeat();
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Solar System Simulation'),
//       ),
//       body: Center(
//         child: SolarSystem(animationController: _animationController),
//       ),
//     );
//   }
// }
//
// class SolarSystem extends StatelessWidget {
//   final AnimationController animationController;
//
//   SolarSystem({required this.animationController});
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: SolarSystemPainter(animationController),
//       size: Size(double.infinity, double.infinity),
//     );
//   }
// }
//
// class SolarSystemPainter extends CustomPainter {
//   final AnimationController animationController;
//
//   SolarSystemPainter(this.animationController)
//       : super(repaint: animationController);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Create a sun at the center
//     final sunRadius = 40.0;
//     final sunPaint = Paint()..color = Colors.yellow;
//     final sunCenter = Offset(size.width / 2, size.height / 2);
//     canvas.drawCircle(sunCenter, sunRadius, sunPaint);
//
//     // Create planets and their orbits
//     final planets = [
//       Planet(name: 'Mercury', radius: 15, orbitRadius: 100),
//       Planet(name: 'Venus', radius: 20, orbitRadius: 140),
//       Planet(name: 'Earth', radius: 25, orbitRadius: 180),
//       Planet(name: 'Mars', radius: 20, orbitRadius: 240),
//       Planet(name: 'Jupiter', radius: 40, orbitRadius: 320),
//       Planet(name: 'Saturn', radius: 35, orbitRadius: 420),
//       Planet(name: 'Uranus', radius: 30, orbitRadius: 500),
//       Planet(name: 'Neptune', radius: 30, orbitRadius: 580),
//     ];
//
//     final orbitPaint = Paint()
//       ..color = Colors.grey.withOpacity(0.5)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 1.0;
//
//     for (final planet in planets) {
//       final radians = (2 * pi * animationController.value) /
//           planet.orbitRadius; // Value to determine planet position on the orbit
//       final x = sunCenter.dx + planet.orbitRadius * cos(radians);
//       final y = sunCenter.dy + planet.orbitRadius * sin(radians);
//
//       // Draw planet orbit
//       canvas.drawCircle(sunCenter, planet.orbitRadius, orbitPaint);
//
//       // Draw planet
//       final planetPaint = Paint()..color = Colors.blue;
//       canvas.drawCircle(Offset(x, y), planet.radius, planetPaint);
//     }
//   }
//
//   @override
//   bool shouldRepaint(SolarSystemPainter oldDelegate) => true;
// }
//
// class Planet {
//   final String name;
//   final double radius;
//   final double orbitRadius;
//
//   Planet({required this.name, required this.radius, required this.orbitRadius});
// }
