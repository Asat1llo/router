import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.amber,
      ),
      body: Row(
        children: [
          TextButton(onPressed: (){
            context.push('/about');
            },
              child: Text('About')),
          TextButton(onPressed: (){
            context.push('/contact');
            },
              child: Text('Contact'))
        ],
      ),
    );
  }
}
