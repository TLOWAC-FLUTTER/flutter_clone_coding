# flutter_clone_coding

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

![img.png](img.png)

```dart
child: ListTile(
    minLeadingWidth: 0,
    // ListTile 에서 leading 의 요소를 세로 중앙 정렬하는 방법
    leading: Container(
      height: double.infinity,
      child: Icon(Icons.ac_unit_outlined),
    ),
    title: Text("Speaking Skills"),
    subtitle: Text("15 Exercises"),
),
```