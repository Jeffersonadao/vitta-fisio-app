import 'package:flutter/material.dart';

class NeuroPage2 extends StatefulWidget {
  const NeuroPage2({super.key});

  @override
  State<NeuroPage2> createState() => _NeuroPage2State();
}

class _NeuroPage2State extends State<NeuroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Neuro - Pagina 2')),
    );
  }
}
