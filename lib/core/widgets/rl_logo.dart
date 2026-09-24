import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentlog/core/theme/app_colors.dart';

/// The RentLOG mark plus the "Rent" + bold teal "LOG" wordmark, as in the
/// web app's `src/components/brand/Logo.tsx`.
class RlLogo extends StatelessWidget {
  const RlLogo({this.size = 32, this.showWordmark = true, super.key});

  final double size;
  final bool showWordmark;

  @override
  Widget build(BuildContext context) {
    final mark = SvgPicture.asset(
      'assets/brand/mark.svg',
      width: size,
      height: size,
      semanticsLabel: 'RentLOG',
    );
    if (!showWordmark) return mark;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        mark,
        SizedBox(width: size * 0.3),
        Text.rich(
          TextSpan(
            children: const [
              TextSpan(text: 'Rent'),
              TextSpan(
                text: 'LOG',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
            ],
            style: TextStyle(
              fontSize: size * 0.7,
              letterSpacing: -0.4,
              color: AppColors.foreground,
            ),
          ),
        ),
      ],
    );
  }
}
