import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lesson3/pages/about_page.dart';
import 'package:lesson3/pages/contact_page.dart';
import 'package:lesson3/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig:_router
    );
  }
}

final _router = GoRouter(
  routes:[
    GoRoute(
        path: "/" ,
        builder:(context,builder)=>HomePage()
    ),
    GoRoute(
        path: "/about" ,
        builder:(context,builder)=>AboutPage()
    ),
    GoRoute(
        path: "/contact" ,
        builder:(context,builder)=>ContactPage()
    )
  ]
);
