import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pet/core/index.dart';
import 'package:routemaster/routemaster.dart';

class PetApp extends StatelessWidget {
  const PetApp({super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          routeInformationParser: const RoutemasterParser(),
          routerDelegate: RoutemasterDelegate(
            routesBuilder: (_) => GetIt.I.get<AppRouter>().router,
          ),
        ),
      );
}
