import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:training_task/Routing/router_generator.dart';
import 'package:training_task/Themes/app_them.dart';
import 'package:training_task/Themes/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: AppThem.lightTheme,
          darkTheme: AppThem.darkTheme,
           themeMode: themeProvider.themeMode,
          routerConfig: RouterGenerator.mainRouer,
        );
      },
    );
  }
}
