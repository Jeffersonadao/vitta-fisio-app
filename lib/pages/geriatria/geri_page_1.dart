import 'package:flutter/material.dart';

class GeriPage1 extends StatefulWidget {
  const GeriPage1({super.key});

  @override
  State<GeriPage1> createState() => _GeriPage1State();
}

class _GeriPage1State extends State<GeriPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Geri - Pagina 1')),
    );
  }
}
