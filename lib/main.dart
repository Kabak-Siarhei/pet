import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pet/index.dart';

void main() {
  runZonedGuarded(
    () async {
      await initInjector();

      runApp(const PetApp());
    },
    Error.throwWithStackTrace,
  );
}
