// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:animated_background/animated_background.dart';
// import 'package:page_transition/page_transition.dart';
// import 'main.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'settings.dart';
// import 'package:chart_sparkline/chart_sparkline.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.blue),
//       home: ReadingsPage(),
//     );
//   }
// }

// class ReadingsPage extends StatefulWidget {
//   @override
//   _ReadingsPageState createState() => _ReadingsPageState();
// }

// //How do I make a table that shows the readings from the sensors?
// //Can you write a function that creates a table that shows the readings from the sensors?
// //

// class _ReadingsPageState extends State<ReadingsPage>
//     with SingleTickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(60.0),
//         child: AppBar(
//           title: Text('Jake\'s Room:',
//               style: GoogleFonts.montserrat(fontSize: 30)),
//           backgroundColor: Colors.black,
//           actions: [],
//         ),
//       ),
//       body: AnimatedBackground(
//         behaviour: RandomParticleBehaviour(
//           options: ParticleOptions(
//             baseColor: Color.fromARGB(255, 133, 144, 164),
//             spawnMinSpeed: 10.0,
//             spawnMaxSpeed: 20.0,
//             spawnMaxRadius: 20.0,
//             particleCount: 20,
//           ),
//         ),
//         vsync: this,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Center(
//             // <-- Wrap SingleChildScrollView with Center
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.only(
//                     top: 40.0, bottom: 40.0), // Adjust these values as needed

//                 child: Column(
//                   mainAxisSize: MainAxisSize.min, // <-- Set this property
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     ListTile(
//                       leading: Text("Icon"),
//                       title: "MQ-2",
//                       subtitle: Text("No Data"),
//                       trailing: Text("Button"),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget readingTile(String title, String value) {
//     return ListTile(
//       contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
//       title: Text(
//         title,
//         style:
//             GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w500),
//       ),
//       trailing: Text(
//         value,
//         style:
//             GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w500),
//       ),
//     );
//   }
// }

// class NotchTitle extends StatelessWidget {
//   final String title;

//   NotchTitle({required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(16),
//       ),
//       padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
//       child: Text(
//         title,
//         style:
//             GoogleFonts.montserrat(fontSize: 40, fontWeight: FontWeight.w500),
//       ),
//     );
//   }
// }
