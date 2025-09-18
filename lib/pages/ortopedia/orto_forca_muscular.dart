import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitta_fisio/pages/ortopedia/orto_testes_especiais.dart';
import 'package:vitta_fisio/widgets/decoracao_campo_form.dart';
import 'package:vitta_fisio/widgets/gradientBackgroud.dart';

class ForcaMuscular extends StatefulWidget {
  const ForcaMuscular({super.key});

  @override
  State<ForcaMuscular> createState() => _ForcaMuscularState();
}

class _ForcaMuscularState extends State<ForcaMuscular> {
  String? superiorDireito;
  String? superiorEsquerdo;
  String? inferiorDireito;
  String? inferiorEsquerdo;
  String? outrosMembos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(children: [Text('Exame Físico'), Text('Força Muscular')]),
      ),
      body: GradientBackground(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Teste de Força muscular membros superiores:'),

                            SizedBox(height: 15),

                            Row(
                              children: [
                                Text(
                                  'Superior Direito : ',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 10),
                                DropdownButton<String>(
                                  value: superiorDireito,
                                  hint: Text('Selecione o Grau'),
                                  items: [
                                    DropdownMenuItem(
                                      value: 'Grau 1',
                                      child: Text('Grau 1'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 2',
                                      child: Text('Grau 2'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 3',
                                      child: Text('Grau 3'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 4',
                                      child: Text('Grau 4'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 5',
                                      child: Text('Grau 5'),
                                    ),
                                  ],
                                  onChanged: (valor) {
                                    superiorDireito = valor;
                                  },
                                ),
                              ],
                            ),

                            SizedBox(height: 15),

                            Row(
                              children: [
                                Text(
                                  'Superior Esquerdo : ',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 10),
                                DropdownButton<String>(
                                  value: superiorEsquerdo,
                                  hint: Text('Selecione o Grau'),
                                  items: [
                                    DropdownMenuItem(
                                      value: 'Grau 1',
                                      child: Text('Grau 1'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 2',
                                      child: Text('Grau 2'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 3',
                                      child: Text('Grau 3'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 4',
                                      child: Text('Grau 4'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 5',
                                      child: Text('Grau 5'),
                                    ),
                                  ],
                                  onChanged: (valor) {
                                    superiorEsquerdo = valor;
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),

                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Teste de Força muscular membros inferiores:'),

                            SizedBox(height: 15),

                            Row(
                              children: [
                                Text(
                                  'Inferior Direito : ',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 10),
                                DropdownButton<String>(
                                  value: inferiorDireito,
                                  hint: Text('Selecione o Grau'),
                                  items: [
                                    DropdownMenuItem(
                                      value: 'Grau 1',
                                      child: Text('Grau 1'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 2',
                                      child: Text('Grau 2'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 3',
                                      child: Text('Grau 3'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 4',
                                      child: Text('Grau 4'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 5',
                                      child: Text('Grau 5'),
                                    ),
                                  ],
                                  onChanged: (valor) {
                                    inferiorDireito = valor;
                                  },
                                ),
                              ],
                            ),

                            SizedBox(height: 15),

                            Row(
                              children: [
                                Text(
                                  'Inferior Esquerdo : ',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(width: 10),
                                DropdownButton<String>(
                                  value: inferiorEsquerdo,
                                  hint: Text('Selecione o Grau'),
                                  items: [
                                    DropdownMenuItem(
                                      value: 'Grau 1',
                                      child: Text('Grau 1'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 2',
                                      child: Text('Grau 2'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 3',
                                      child: Text('Grau 3'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 4',
                                      child: Text('Grau 4'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Grau 5',
                                      child: Text('Grau 5'),
                                    ),
                                  ],
                                  onChanged: (valor) {
                                    inferiorEsquerdo = valor;
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),

                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Outros grupos musculares :'),

                            SizedBox(height: 10),

                            TextFormField(
                              decoration: InputDecoration(
                                label: Text('Descreva :'),
                              ),
                              keyboardType: TextInputType.multiline,
                              minLines: null,
                              maxLines: null,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration('Observaçoes :'),
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: null,
                      ),
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
                    Get.to(() => TestesEspeciais());
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
