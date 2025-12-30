import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class HideOnScrollHeader extends StatelessWidget {
  final bool visible;

  const HideOnScrollHeader({
    super.key,
    required this.visible,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: visible ? 56 : 0,
      color: AppColors.primary,
      child: const SafeArea(
        child: Center(
          child: Text(
            'HEADER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
