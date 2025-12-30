import 'package:flutter/material.dart';
import '../controller/scroll_visibility_controller.dart';
import '../enums/scroll_visibility_state.dart';
import 'animated_header.dart';
import 'animated_bottom_bar.dart';

class RecyclerUpScrollView extends StatefulWidget {
  final Widget header;
  final Widget bottomBar;
  final List<Widget> children;

  const RecyclerUpScrollView({
    super.key,
    required this.header,
    required this.bottomBar,
    required this.children,
  });

  @override
  State<RecyclerUpScrollView> createState() => _RecyclerUpScrollViewState();
}

class _RecyclerUpScrollViewState extends State<RecyclerUpScrollView> {
  final ScrollController _scrollController = ScrollController();
  final ScrollVisibilityController _visibilityController =
  ScrollVisibilityController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _visibilityController
          .onScroll(_scrollController.position.userScrollDirection);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _visibilityController,
      builder: (_, __) {
        final isVisible = _visibilityController.state ==
            ScrollVisibilityState.visible;

        return Scaffold(
          body: Column(
            children: [
              AnimatedHeader(
                visible: isVisible,
                child: widget.header,
              ),
              Expanded(
                child: ListView(
                  controller: _scrollController,
                  children: widget.children,
                ),
              ),
              AnimatedBottomBar(
                visible: isVisible,
                child: widget.bottomBar,
              ),
            ],
          ),
        );
      },
    );
  }
}
