import 'package:fitness_app/pages/homepage.dart';
import 'package:flutter/material.dart';

void bootstrap(String env) => runApp(MyApp(env: env));

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.env});
  final String env;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        if (env == 'production') return child!;
        return Banner(
          message: env.toUpperCase(),
          location: BannerLocation.topEnd,
          child: child,
        );
      },
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const HomePage(),
    );
  }
}
