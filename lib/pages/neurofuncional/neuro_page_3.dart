import 'package:flutter/material.dart';

class NeuroPage3 extends StatefulWidget {
  const NeuroPage3({super.key});

  @override
  State<NeuroPage3> createState() => _NeuroPage3State();
}

class _NeuroPage3State extends State<NeuroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Neuro - Pagina 3')),
    );
  }
}
