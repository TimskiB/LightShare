// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:avatar_glow/avatar_glow.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      startDelay: Duration(milliseconds: 1000),
      glowColor: Colors.white,
      endRadius: 160.0,
      duration: Duration(milliseconds: 2000),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: Duration(milliseconds: 100),
      child: MaterialButton(
        onPressed: () {
          print("GO");
        },
        elevation: 20.0,
        shape: CircleBorder(),
        child: Container(
          width: 200.0,
          height: 200.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(160.0)),
          child: Text(
            "GO",
            style: TextStyle(
                fontSize: 75.0,
                fontWeight: FontWeight.w800,
                color: Color(0xFF7557D6)),
          ),
        ),
      ),
    );
  }
}
