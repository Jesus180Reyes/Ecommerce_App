import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slideshow_app/pages/pages.dart';
import 'package:slideshow_app/providers/dot_provder.dart';
import 'package:slideshow_app/providers/providers.dart';
import 'package:slideshow_app/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DotProvider>(create: (_) => DotProvider()),
        ChangeNotifierProvider(create: (_) => TimerProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce App',
        initialRoute: 'home',
        theme: AppTheme.lightTheme,
        routes: {
          'slideShow': (context) => const SlideShowPage(),
          'home': (context) => const HomePage(),
          'details': (context) => const DetailsPage(),
          'detailsD': (context) => const DetailsDiscountPage(),
        },
      ),
    );
  }
}
