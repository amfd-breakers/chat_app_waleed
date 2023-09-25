import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Separator extends StatelessWidget {
  const Separator({
    super.key,
    this.seperatorColor = Colors.white,
    this.label = 'OR',
  });
  final Color seperatorColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: .5.h,
          width: 150.w,
          color: seperatorColor,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: seperatorColor,
              ),
        ),
        Container(
          height: .5.h,
          width: 150.w,
          color: seperatorColor,
        ),
      ],
    );
  }
}
