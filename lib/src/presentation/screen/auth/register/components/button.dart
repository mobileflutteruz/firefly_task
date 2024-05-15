import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String title;

  final String icon;
  final Color color;

  late Function()? onTap;
  Button(
      {super.key,
      this.onTap,
      required this.title,
      required this.icon,
      required this.color});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            height: 52,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: ShapeDecoration(
              color: widget.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.icon),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF040415),
                    fontSize: 14,
                    fontFamily: 'Airbnb Cereal',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
