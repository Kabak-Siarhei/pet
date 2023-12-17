import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme get _textTheme => GoogleFonts.getTextTheme('Lato').apply(
        displayColor: Colors.black,
        decorationColor: Colors.black,
        bodyColor: Colors.black,
      );

  static TabBarTheme get _tabBarTheme => TabBarTheme(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.yellow.shade300,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Colors.black,
        labelStyle: _textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: _textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: Colors.black,
      );

  static ElevatedButtonThemeData get _elevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 21),
          foregroundColor: Colors.white,
          backgroundColor: Colors.purple.shade500,
          disabledBackgroundColor: Colors.grey.shade300,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );

  static TextButtonThemeData get _textButtonTheme => TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          disabledForegroundColor: Colors.grey.shade500,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );

  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade500,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.purple.shade500,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade500,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        floatingLabelStyle: _textTheme.bodySmall?.copyWith(
          color: Colors.grey.shade500,
        ),
        labelStyle: _textTheme.bodyLarge?.copyWith(
          color: Colors.grey.shade500,
        ),
        hintStyle: _textTheme.bodyLarge?.copyWith(
          color: Colors.grey.shade500,
        ),
        errorStyle: _textTheme.labelSmall?.copyWith(
          color: Colors.red.shade500,
        ),
      );

  static AppBarTheme get _appBarTheme => const AppBarTheme(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
      );

  static ListTileThemeData get _listTileTheme => const ListTileThemeData(
        contentPadding: EdgeInsets.all(16),
        visualDensity: VisualDensity.compact,
        enableFeedback: true,
      );

  static ThemeData get lightTheme => ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: _elevatedButtonTheme,
        inputDecorationTheme: _inputDecorationTheme,
        tabBarTheme: _tabBarTheme,
        textButtonTheme: _textButtonTheme,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.purple.shade500,
        ),
        textTheme: _textTheme,
        appBarTheme: _appBarTheme,
        listTileTheme: _listTileTheme,
      );
}
