import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slideshow_app/pages/pages.dart';
import 'package:slideshow_app/providers/dot_provder.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DotProvider>(create: (_) => DotProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SlideShow App',
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomePage(),
          'principal': (context) => const PrincipalPage(),
        },
      ),
    );
  }
}
