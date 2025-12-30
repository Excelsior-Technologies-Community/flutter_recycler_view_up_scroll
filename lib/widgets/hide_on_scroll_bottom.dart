import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class HideOnScrollBottom extends StatelessWidget {
  final bool visible;

  const HideOnScrollBottom({
    super.key,
    required this.visible,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: visible ? 60 : 0,
      color: AppColors.primary,
      child: const Center(
        child: Text(
          'BOTTOM BAR',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
