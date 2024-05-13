import 'package:flutter/material.dart';

import '../../config/themes/themes.dart';
import '../../core/utils/utils.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({
    super.key,
    this.onTap,
    required this.title,
    this.isFurniture = false,
  });

  final String title;
  final bool isFurniture;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: AppUtils.kBorderRadius10,
      onTap: onTap,
      child: Container(
        height: 48,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: const Color(0xFF2472F2),
          shape: RoundedRectangleBorder(
            borderRadius: AppUtils.kBorderRadius10,
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.manropeSemiBold15.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
