import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitta_fisio/pages/ortopedia/orto_amplitudo_movimento_page.dart';
import 'package:vitta_fisio/widgets/decoracao_campo_form.dart';
import 'package:vitta_fisio/widgets/gradientBackgroud.dart';

class OrtoPalpacaoPage extends StatefulWidget {
  const OrtoPalpacaoPage({super.key});

  @override
  State<OrtoPalpacaoPage> createState() => _OrtoPalpacaoPageState();
}

class _OrtoPalpacaoPageState extends State<OrtoPalpacaoPage> {
  String? pontosDeDor;
  String? tensaoMuscularOuEspasmos;
  String? sensibilidadeOuCrepitacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(children: [Text('Exame Físico'), Text('Palpação')]),
      ),
      body: GradientBackground(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    children: [
                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pontos de dor :'),

                            SizedBox(height: 15),

                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      groupValue: pontosDeDor,
                                      value: 'Dor Presente',
                                      onChanged: (valor) {
                                        setState(() {
                                          pontosDeDor = valor!;
                                        });
                                      },
                                    ),
                                    Text('Dor Presente'),
                                  ],
                                ),

                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      groupValue: pontosDeDor,
                                      value: 'Dor Ausente',
                                      onChanged: (valor) {
                                        setState(() {
                                          pontosDeDor = valor!;
                                        });
                                      },
                                    ),
                                    Text('Dor Ausente'),
                                  ],
                                ),

                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text('Descreva :'),
                                  ),
                                ),

                                SizedBox(height: 15),
                              ],
                            ),
                          ],
                        ),
                      ), // campo 1

                      SizedBox(height: 20),

                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tensão Muscular ou Espasmos :'),

                            SizedBox(height: 15),

                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      groupValue: tensaoMuscularOuEspasmos,
                                      value: 'Tensão ou Espasmo Presente',
                                      onChanged: (valor) {
                                        setState(() {
                                          tensaoMuscularOuEspasmos = valor!;
                                        });
                                      },
                                    ),
                                    Text('Presente'),
                                  ],
                                ),

                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      groupValue: tensaoMuscularOuEspasmos,
                                      value: 'Tensão ou Espasmo  Ausente',
                                      onChanged: (valor) {
                                        setState(() {
                                          tensaoMuscularOuEspasmos = valor!;
                                        });
                                      },
                                    ),
                                    Text('Ausente'),
                                  ],
                                ),

                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text('Descreva :'),
                                  ),
                                ),

                                SizedBox(height: 15),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20),

                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sensibilidade ou Crepitação :'),

                            SizedBox(height: 15),

                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      groupValue: sensibilidadeOuCrepitacao,
                                      value:
                                          'Sensibilidade ou crepitação Presente',
                                      onChanged: (valor) {
                                        setState(() {
                                          sensibilidadeOuCrepitacao = valor!;
                                        });
                                      },
                                    ),
                                    Text('Presente'),
                                  ],
                                ),

                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      groupValue: sensibilidadeOuCrepitacao,
                                      value:
                                          'Sensibilidade ou Crepitação Ausente',
                                      onChanged: (valor) {
                                        setState(() {
                                          sensibilidadeOuCrepitacao = valor!;
                                        });
                                      },
                                    ),
                                    Text('Ausente'),
                                  ],
                                ),

                                TextFormField(
                                  decoration: InputDecoration(
                                    label: Text('Descreva :'),
                                  ),
                                ),

                                SizedBox(height: 15),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Anterior',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => AmplitudeDeMovimento());
                  },
                  child: Text(
                    'Próximo',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
