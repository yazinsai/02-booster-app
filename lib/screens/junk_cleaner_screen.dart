import 'package:booster/widgets/dotted_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:booster/widgets/disk_thing_painter.dart';

class JunkCleanerScreen extends StatefulWidget {
  @override
  JunkCleanerScreenState createState() => JunkCleanerScreenState();
}

class JunkCleanerScreenState extends State<JunkCleanerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Junk Cleaner',
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 240,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomPaint(
                    painter: DiskThingPainter(
                        gradient: LinearGradient(colors: [
                      const Color(0xFFff0057),
                      const Color(0xFFff150d)
                    ])),
                    size: Size(240, 240)),
                Text(
                  '2.5 GB',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 70),
          ...entry('Phone Cache', '820 MB'),
          ...entry('Temporary Files', '2,184 MB'),
          ...entry('APK Files', '560 MB'),
          ...entry('Image Thumbnails', '894 MB'),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              child: Text('Clean',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFff0057), Color(0xFFff150d)]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> entry(String title, String value) => [
      Row(
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.grey[300],
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 20,
      )
    ];
