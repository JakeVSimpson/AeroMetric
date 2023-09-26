import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_background/animated_background.dart';
import 'package:page_transition/page_transition.dart';
import 'main.dart';
import 'package:fl_chart/fl_chart.dart';
import 'settings.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class ReadingsPage extends StatefulWidget {
  @override
  _ReadingsPageState createState() => _ReadingsPageState();
}

//How do I make a table that shows the readings from the sensors?
//Can you write a function that creates a table that shows the readings from the sensors?
//

//Why is my screen not scrollable?

class _ReadingsPageState extends State<ReadingsPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          title: Text('Jake\'s Room:',
              style: GoogleFonts.montserrat(fontSize: 30)),
          backgroundColor: Colors.black,
          actions: [],
        ),
      ),
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            baseColor: Color.fromARGB(255, 133, 144, 164),
            spawnMinSpeed: 10.0,
            spawnMaxSpeed: 20.0,
            spawnMaxRadius: 20.0,
            particleCount: 20,
          ),
        ),
        vsync: this,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            // <-- Wrap SingleChildScrollView with Center
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 40.0, bottom: 40.0), // Adjust these values as needed

                child: Column(
                  mainAxisSize: MainAxisSize.min, // <-- Set this property
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Basic Readings",
                        style: GoogleFonts.montserrat(
                            fontSize: 30, fontWeight: FontWeight.w800)),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 10000,
                      endIndent: 10000,
                    ),
                    ListTile(
                      iconColor: const Color.fromARGB(255, 175, 53, 53),
                      leading: Icon(Icons.thermostat),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'Temperature',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        '72°F',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      iconColor: Color.fromARGB(255, 55, 147, 245),
                      leading: Icon(Icons.water_drop),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'Humidity',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        '60%',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      iconColor: Color.fromARGB(255, 55, 147, 245),
                      leading: Icon(Icons.air_outlined),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'Air Quality',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        'Good',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 2000,
                      endIndent: 2000,
                    ),
                    Text("Gas Detection",
                        style: GoogleFonts.montserrat(
                            fontSize: 30, fontWeight: FontWeight.w800)),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 2000,
                      endIndent: 2000,
                    ),
                    ListTile(
                      iconColor: Color.fromARGB(255, 91, 98, 106),
                      leading: Icon(Icons.cloud),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'CO2',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        'None Detected',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      iconColor: Color.fromARGB(255, 91, 98, 106),
                      leading: Icon(Icons.cloud),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'VOC',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        'None Detected',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      iconColor: Color.fromARGB(255, 91, 98, 106),
                      leading: Icon(Icons.cloud),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'CO',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        'None Detected',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      iconColor: Color.fromARGB(255, 91, 98, 106),
                      leading: Icon(Icons.cloud),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'CH4',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        'None Detected',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 20,
                      endIndent: 20,
                    ),
                    // I want to create a table that shows the readings from all the sensors.
                    ListTile(
                      iconColor: Color.fromARGB(255, 91, 98, 106),
                      leading: Icon(Icons.cloud),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'H2',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        'None Detected',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      iconColor: Color.fromARGB(255, 91, 98, 106),
                      leading: Icon(Icons.cloud),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'LPG',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        'None Detected',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.blue,
                      indent: 20,
                      endIndent: 20,
                    ),
                    ListTile(
                      iconColor: Color.fromARGB(255, 91, 98, 106),
                      leading: Icon(Icons.cloud),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 16.0),
                      title: Text(
                        'Smoke',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                        'None Detected',
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ),
                    //I want to create a button that will take me to the a graphs page.

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType
                                .fade, // Choose the type of animation you prefer.
                            child: ReadingsPage(),
                          ),
                        );
                      },
                      child: Text("View Graphs",
                          style: GoogleFonts.montserrat(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.blue,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        shadowColor: Colors.blueAccent,
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget readingTile(String title, String value) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      title: Text(
        title,
        style:
            GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w500),
      ),
      trailing: Text(
        value,
        style:
            GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class NotchTitle extends StatelessWidget {
  final String title;

  NotchTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Text(
        title,
        style:
            GoogleFonts.montserrat(fontSize: 40, fontWeight: FontWeight.w500),
      ),
    );
  }
}
