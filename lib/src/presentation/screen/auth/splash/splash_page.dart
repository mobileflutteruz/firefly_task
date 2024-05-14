import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF59443B),
      body: Stack(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xFFEBEBEB),
                    Color(0xFFA3A1C8),
                    Color(0xFF7B55BC)
                  ],
                  center: Alignment.topLeft,
                  radius: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,   
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xFFEBEBEB),
                    Color(0xFFA3A1C8),
                    Color(0xFF7B55BC)
                  ],
                  center: Alignment.bottomRight,
                  radius: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
                width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5, 
            ),
          ),
          
        ],
      ),
    );
  }
}
