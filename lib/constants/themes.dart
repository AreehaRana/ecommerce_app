import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webuy_app/constants/colors.dart';

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier() : super(ThemeMode.system);

  void toggle() {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}

final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(),
);

class MyThemes {
  //Dark theme
  static final darkTheme = ThemeData(
    textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
    canvasColor: Colors.grey.shade900,
    cardColor: Colors.grey.shade800,
    errorColor: Colors.redAccent,
    shadowColor: Colors.grey.shade700.withOpacity(0.2),
    secondaryHeaderColor: Colors.blue.shade900, colorScheme: const ColorScheme.dark().copyWith(background: Colors.grey.shade700), bottomAppBarTheme: BottomAppBarTheme(color: const Color(0xFF913175)),
  );

  //Light theme
  static final lightTheme = ThemeData(
    textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
    canvasColor: const Color(0xFFF2F2F3),
    cardColor: white,
    shadowColor: Colors.grey.shade300,
    secondaryHeaderColor: const Color(0xFF595DC6), colorScheme: const ColorScheme.light().copyWith(background: const Color(0xFFF2F2F3)), bottomAppBarTheme: BottomAppBarTheme(color: const Color(0xFFFC5F8E)),
  );
}
