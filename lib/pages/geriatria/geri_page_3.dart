import 'package:flutter/material.dart';

class GeriPage2 extends StatefulWidget {
  const GeriPage2({super.key});

  @override
  State<GeriPage2> createState() => _GeriPage2State();
}

class _GeriPage2State extends State<GeriPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Geri - Pagina 3')),
    );
  }
}
