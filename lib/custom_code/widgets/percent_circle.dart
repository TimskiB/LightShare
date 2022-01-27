// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:percent_indicator/percent_indicator.dart';

class PercentCircle extends StatefulWidget {
  const PercentCircle({
    Key key,
    this.width,
    this.height,
    this.percent,
  }) : super(key: key);

  final double width;
  final double height;
  final int percent;

  @override
  _PercentCircleState createState() => _PercentCircleState();
}

class _PercentCircleState extends State<PercentCircle> {
  @override
  String getPercent() {
    final int newPercent = widget.percent;
    return "$newPercent%";
  }

  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 80.0,
      lineWidth: 4.0,
      animation: true,
      percent: widget.percent / 100,
      center: new Text(
        getPercent(),
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );
  }
}
