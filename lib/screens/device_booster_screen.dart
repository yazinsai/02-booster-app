import 'package:booster/widgets/dotted_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:booster/widgets/disk_thing_painter.dart';

class DeviceBoosterScreen extends StatefulWidget {
  @override
  DeviceBoosterScreenState createState() => DeviceBoosterScreenState();
}

class DeviceBoosterScreenState extends State<DeviceBoosterScreen> {
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
            'Device Booster',
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
                  '1.7 GB',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 70),
          Row(
            children: [
              Text(
                'Memory',
                style: TextStyle(
                    color: Colors.grey[300],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '1.9 GB',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Expanded(
                child: Text('67%',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          DottedProgressBar(
              progress: 0.67,
              gradient: LinearGradient(
                  colors: [const Color(0xFFff0057), const Color(0xFFff150d)])),
          SizedBox(height: 50),
          Row(
            children: [
              Text(
                'Storage',
                style: TextStyle(
                    color: Colors.grey[300],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '12.75 GB',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Expanded(
                child: Text('25%',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          DottedProgressBar(
              progress: .25,
              gradient: LinearGradient(
                  colors: [const Color(0xFFcae12c), const Color(0xFF50bf2a)])),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              child: Text('Boost',
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
