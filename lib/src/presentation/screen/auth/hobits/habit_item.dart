import 'package:firefly_task/src/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class HabitItem extends StatefulWidget {
  HabitItem(
      {super.key,
      required this.index,
      required this.imageLink,
      required this.onTap,
      required this.title});
  final int index;
  final String imageLink;
  final String title;
  void Function()? onTap;

  @override
  State<HabitItem> createState() => _ColorfulContextState();
}

class _ColorfulContextState extends State<HabitItem> {
  Color containerColor = const Color(0xffEAECF0);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            containerColor = containerColor == const Color(0xffEAECF0)
                ? ColorConstants.c553B59
                : const Color(0xffEAECF0);
          },
        );
      },
      child: Container(
        height: 140,
        width: 160,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: containerColor,
              // color: Colors.yellow,
              width: 2),
        ), // Using the updated color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.imageLink
                // ImageConst.book
                ),
                SizedBox(
                  height: 24,
                ),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
