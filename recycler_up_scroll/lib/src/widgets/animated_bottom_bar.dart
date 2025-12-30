import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatelessWidget {
  final bool visible;
  final Widget child;
  final double height;

  const AnimatedBottomBar({
    super.key,
    required this.visible,
    required this.child,
    this.height = 60,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: visible ? height : 0,
      child: child,
    );
  }
}
