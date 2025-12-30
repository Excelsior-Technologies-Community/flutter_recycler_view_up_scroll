import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../enums/scroll_visibility_state.dart';

class ScrollVisibilityController extends ChangeNotifier {
  ScrollVisibilityState state = ScrollVisibilityState.visible;

  void onScroll(ScrollDirection direction) {
    if (direction == ScrollDirection.reverse &&
        state == ScrollVisibilityState.visible) {
      state = ScrollVisibilityState.hidden;
      notifyListeners();
    }
    else if (direction == ScrollDirection.forward &&
        state == ScrollVisibilityState.hidden) {
      state = ScrollVisibilityState.visible;
      notifyListeners();
    }
  }
}
