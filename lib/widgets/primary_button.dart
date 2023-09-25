import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.onTap,
    required this.child,
    this.isLoading = false,
    this.style,
  });

  final void Function()? onTap;
  final Widget child;
  final bool isLoading;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: isLoading ? null : onTap,
      child: isLoading
          ? Center(
              child: SizedBox(
                height: 20.h,
                width: 20.h,
                child: const CircularProgressIndicator(),
              ),
            )
          : child,
    );
  }
}
