import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      final direction = _scrollController.position.userScrollDirection;

      if (direction == ScrollDirection.reverse && _isVisible) {
        setState(() => _isVisible = false); // scroll UP → hide
      } else if (direction == ScrollDirection.forward && !_isVisible) {
        setState(() => _isVisible = true); // scroll DOWN → show
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// 🔝 HEADER
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: _isVisible ? kToolbarHeight : 0,
            child: widget.header,
          ),

          /// 🧾 LIST
          Expanded(
            child: ListView(
              controller: _scrollController,
              children: widget.children,
            ),
          ),

          /// 🔻 BOTTOM BAR
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: _isVisible ? 60 : 0,
            child: widget.bottomBar,
          ),
        ],
      ),
    );
  }
}
