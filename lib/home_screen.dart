import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_recycler_view_up_scroll/recycler_up_scroll_view.dart';
import '../../widgets/hide_on_scroll_header.dart';
import '../../widgets/hide_on_scroll_bottom.dart';
import '../../utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();

  bool showHeader = true;
  bool showBottom = true;

  void _onScroll(UserScrollNotification notification) {
    if (notification.direction == ScrollDirection.forward) {
      setState(() {
        showHeader = true;
        showBottom = false;
      });
    } else if (notification.direction == ScrollDirection.reverse) {
      setState(() {
        showHeader = false;
        showBottom = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return RecyclerUpScrollView(
      header: AppBar(
        title: const Text(
          "Recycler Scroll",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
      ),
      bottomBar: Container(
        color: Colors.blue,
        child: const Center(
          child: Text("Bottom Bar", style: TextStyle(color: Colors.white)),
        ),
      ),
      children: List.generate(
        40,
        (index) => ListTile(title: Text("Recycler Scroll View Up $index")),
      ),
    );
  }
}
