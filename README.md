# 🚀 Recycler Up Scroll (Flutter)

A **RecyclerView-style scroll behavior** for Flutter where the **Header (AppBar) and Bottom Bar automatically hide on scroll up** and **reappear on scroll down**.

Perfect for **feeds, lists, dashboards, and content-heavy screens** — just like Android RecyclerView.

---

## 📸 Preview
![demo](https://github.com/user-attachments/assets/e44b89d9-70ed-4378-8a14-ac4af0f09795)



---

## ✨ Features

✅ RecyclerView-like scroll behavior  
✅ Hide **Header & Bottom Bar** on scroll up  
✅ Show **Header & Bottom Bar** on scroll down  
✅ Smooth animations  
✅ Clean & modular architecture  
✅ No third-party dependencies  
✅ Easy to customize  

---

## 📦 Installation

### Add dependency in pubspec.yaml:
```yaml
dependencies:
  recycler_up_scroll:
    path:'.../flutter_recycler_view_up_scroll/recycler_up_scroll' ## your path
```

### Using GitHub (recommended during development):
```yaml
dependencies:
  recycler_up_scroll:
    path:
      url: https://github.com/YOUR_USERNAME/recycler_up_scroll.git
```

## 🚀 Import
```dart
import 'package:recycler_up_scroll/recycler_up_scroll.dart';
```

---

## 🧱 Library Structure
```text
recycler_up_scroll/
│
├── lib/
│   ├── recycler_up_scroll.dart
│   │
│   └── src/
│       ├── controller/
│       │   └── scroll_visibility_controller.dart
│       │
│       ├── widgets/
│       │   ├── recycler_up_scroll_view.dart
│       │   ├── animated_header.dart
│       │   └── animated_bottom_bar.dart
│       │
│       └── enums/
│           └── scroll_visibility_state.dart

```

---

## 🧠 How It Works
- Uses `ScrollController`
- Detects scroll direction using:
```dart
controller.position.userScrollDirection
```

## Scroll Behavior
- ⬆ Scroll UP → Header & Bottom Bar **HIDE**
- ⬇ Scroll DOWN → Header & Bottom Bar **SHOW**

Animations are handled using `AnimatedContainer`.

---

## 🧪 Basic Usage
```dart
RecyclerUpScrollView(
  header: AppBar(
    title: const Text("Recycler Scroll"),
  ),
  bottomBar: Container(
    height: 60,
    color: Colors.blue,
    child: const Center(
      child: Text(
        "Bottom Bar",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
  children: List.generate(
    40,
    (index) => ListTile(
      title: Text("Item $index"),
    ),
  ),
)
```

---

## 🛡 License
```text
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
