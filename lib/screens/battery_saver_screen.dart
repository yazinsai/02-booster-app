import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:booster/widgets/disk_thing_painter.dart';

class BatterySaverScreen extends StatefulWidget {
  @override
  BatterySaverScreenState createState() => BatterySaverScreenState();
}

class BatterySaverScreenState extends State<BatterySaverScreen> {
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
            'Battery Saver',
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
                      const Color(0xFFcee12c),
                      const Color(0xFF00b328)
                    ])),
                    size: Size(240, 240)),
                Text(
                  '87%',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 70),
          ...entry('Hibernate apps', true),
          ...entry('Adjust brightness', true),
          ...entry('Disable GPS', false),
          ...entry('Optimize battery', true),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              child: Text('Optimize',
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
                    colors: [Color(0xFFcee12c), Color(0xFF00b328)]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> entry(String title, bool value) => [
      Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          CupertinoSwitch(
            value: value,
            activeColor: Color(0xFFe0e2e3),
            trackColor: Colors.black,
            onChanged: (val) {},
          ),
        ],
      ),
      SizedBox(
        height: 20,
      )
    ];
