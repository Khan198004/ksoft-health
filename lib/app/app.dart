import 'package:flutter/material.dart';

import 'router.dart';
import 'theme.dart';

class KSoftHealthApp extends StatelessWidget {
  const KSoftHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KSoft AI Health Coach',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRouter.dashboard,
    );
  }
}