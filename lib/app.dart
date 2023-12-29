import 'package:flutter/material.dart';
import 'package:ecommerce/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.ligthTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
