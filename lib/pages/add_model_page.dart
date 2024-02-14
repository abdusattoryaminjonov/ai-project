import 'package:flutter/material.dart';

class AddModelPage extends StatefulWidget {
  const AddModelPage({super.key});

  @override
  State<AddModelPage> createState() => _AddModelPage();
}

class _AddModelPage extends State<AddModelPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("Models"),
      ),
    );
  }
}
