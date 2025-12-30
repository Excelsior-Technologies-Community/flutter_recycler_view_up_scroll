import 'package:flutter/material.dart';

class AnimatedHeader extends StatelessWidget {
  final bool visible;
  final Widget child;

  const AnimatedHeader({
    super.key,
    required this.visible,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: visible ? kToolbarHeight : 0,
      child: child,
    );
  }
}
