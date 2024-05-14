import 'package:firefly_task/src/core/constants/color_const.dart';
import 'package:flutter/material.dart';

class GenderItem extends StatefulWidget {
  GenderItem({
    Key? key,
    required this.index,
    required this.imageLink,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  final int index;
  final String imageLink;
  final String title;
  final void Function()? onTap;

  @override
  State<GenderItem> createState() => _GenderItemState();
}

class _GenderItemState extends State<GenderItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });

        widget.onTap?.call(); // Call onTap function
      },
      child: Container(
        height: 140,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? ColorConstants.c553B59 : Colors.transparent,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.imageLink,
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
