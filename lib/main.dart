import 'package:boxiz_app/theme.dart';
import 'package:boxiz_app/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          background: BoxizTheme.backgroundColor,
          secondary: BoxizTheme.accentColor
        ),
        scaffoldBackgroundColor: BoxizTheme.backgroundColor
      ),
      debugShowCheckedModeBanner: false,
      title: 'Quang Tran',
      // theme: ThemeData.light()
      //     .copyWith(scaffoldBackgroundColor: BoxizTheme.backgroundColor),
      home: HomePage(),
    );
  }
}
