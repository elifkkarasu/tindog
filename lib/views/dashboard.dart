import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(248, 200, 220, 40),
        title: Padding(
          padding: const EdgeInsets.all(70),
          child: Image.asset('assets/images/icon.png'),
        ),
        actions: const [],
      ),
      body: Container(),
    );
  }
}
