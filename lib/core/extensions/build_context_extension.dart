// ignore_for_file: comment_references
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

extension BuildContextExtention on BuildContext {
  ThemeData get _theme => Theme.of(this);

  /// This mapping renames the typography styles according to the corresponding
  /// Flutter theme text styles for better readability and consistency.
  ///
  /// [Regular] -> [tT57] -> [h64] -> [w0] -> [displayLarge]
  ///
  /// [Regular] -> [tT45] -> [h52] -> [w0] -> [displayMedium]
  ///
  /// [Regular] -> [tT36] -> [h44] -> [w0] -> [displaySmall]
  ///
  ///
  /// [Regular] -> [tT28] -> [h36] -> [w0] -> [headlineMedium]
  ///
  /// [Regular] -> [tT24] -> [h32] -> [w0] -> [headlineSmall]
  ///
  ///
  /// [Medium] -> [tT22] -> [h28] -> [w0] -> [titleLarge]
  ///
  /// [Medium] -> [tT16] -> [h24] -> [w015] -> [titleMedium]
  ///
  /// [Medium] -> [tT14] -> [h20] -> [w01] -> [titleSmall]
  ///
  ///
  /// [Medium] -> [tT12] -> [h16] -> [w05] -> [labelLarge]
  ///
  /// [Medium] -> [tT11] -> [h16] -> [w05] -> [labelSmall]
  ///
  ///
  /// [Regular] -> [tT16] -> [h24] -> [w015] -> [bodyLarge]
  ///
  /// [Regular] -> [tT14] -> [h20] -> [w025] -> [bodyMedium]
  ///
  /// [Regular] -> [tT12] -> [h16] -> [w04] -> [bodySmall]
  ///
  TextTheme get textTheme => _theme.textTheme;

  TextStyle? get bodySmall => textTheme.bodySmall;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get labelSmall => textTheme.labelSmall;
  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get titleSmall => textTheme.titleSmall;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get headlineSmall => textTheme.headlineSmall;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displayLarge => textTheme.displayLarge;

  Routemaster get router => Routemaster.of(this);
}
