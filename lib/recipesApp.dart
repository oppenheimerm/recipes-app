import 'package:flutter/material.dart';
import 'package:recipes_app/ui/screens/home.dart';
import 'package:recipes_app/ui/screens/login.dart';
import 'package:recipes_app/ui/theme.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      //  In order to share the theme across all widgets in our app, we have
      //  to apply the theme to the MaterialApp widget that is being returned
      //  by the build method
      theme: buildTheme(),
      initialRoute: '/login',
      routes: {
        // If you're using navigation routes, Flutter needs a base route.
        // We're going to change this route once we're ready with
        // implementation of HomeScreen.
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}