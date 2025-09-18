import 'package:flutter/material.dart';

class NeuroPage1 extends StatefulWidget {
  const NeuroPage1({super.key});

  @override
  State<NeuroPage1> createState() => _NeuroPage1State();
}

class _NeuroPage1State extends State<NeuroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Neuro - Pagina 1')),
    );
  }
}
