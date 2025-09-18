import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitta_fisio/pages/ortopedia/orto_forca_muscular.dart';
import 'package:vitta_fisio/widgets/decoracao_campo_form.dart';
import 'package:vitta_fisio/widgets/gradientBackgroud.dart';

class AmplitudeDeMovimento extends StatefulWidget {
  const AmplitudeDeMovimento({super.key});

  @override
  State<AmplitudeDeMovimento> createState() => _AmplitudeDeMovimentoState();
}

class _AmplitudeDeMovimentoState extends State<AmplitudeDeMovimento> {
  String? testeAdm;
  bool ombro = false;
  bool cotovelo = false;
  bool punho = false;
  bool quadril = false;
  bool joelho = false;
  bool tornozelo = false;
  bool outrosArticulacoes = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text('Exame Físico'),
            Text('Amplitude de Movimento (ADM)'),
          ],
        ),
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
                            Text(
                              'Teste de ADM ativa e passiva nas articulações afetadas:',
                            ),

                            SizedBox(height: 15),

                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'Palpação presente',
                                      groupValue: testeAdm,
                                      onChanged: (valor) {
                                        setState(() {
                                          testeAdm = valor!;
                                        });
                                      },
                                    ),
                                    Text('Preservada'),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'Palpação Restrita',
                                      groupValue: testeAdm,
                                      onChanged: (valor) {
                                        setState(() {
                                          testeAdm = valor!;
                                        });
                                      },
                                    ),
                                    Text('Restrita'),
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
                            Text('Articulações principais a serem avaliadas :'),

                            SizedBox(height: 15),

                            Wrap(
                              spacing: 20, // espaço horizontal entre os itens
                              runSpacing:
                                  10, // espaço vertical quando quebrar linha
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: ombro,
                                      onChanged: (valor) {
                                        setState(() {
                                          ombro = valor!;
                                        });
                                      },
                                    ),
                                    Text('Ombro'),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: cotovelo,
                                      onChanged: (valor) {
                                        setState(() {
                                          cotovelo = valor!;
                                        });
                                      },
                                    ),
                                    Text('Cotovelo'),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: punho,
                                      onChanged: (valor) {
                                        setState(() {
                                          punho = valor!;
                                        });
                                      },
                                    ),
                                    Text('Punho'),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: quadril,
                                      onChanged: (valor) {
                                        setState(() {
                                          quadril = valor!;
                                        });
                                      },
                                    ),
                                    Text('Quadril'),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: joelho,
                                      onChanged: (valor) {
                                        setState(() {
                                          joelho = valor!;
                                        });
                                      },
                                    ),
                                    Text('Joelho'),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: tornozelo,
                                      onChanged: (valor) {
                                        setState(() {
                                          tornozelo = valor!;
                                        });
                                      },
                                    ),
                                    Text('Tornozelo'),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: outrosArticulacoes,
                                      onChanged: (valor) {
                                        setState(() {
                                          outrosArticulacoes = valor!;
                                        });
                                      },
                                    ),
                                    Text('Outras articulações'),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: 10),

                            if (outrosArticulacoes)
                              TextFormField(
                                decoration: InputDecoration(
                                  label: Text('Descreva :'),
                                ),
                              ),
                            SizedBox(height: 20),
                          ],
                        ),
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
                    Get.to(() => ForcaMuscular());
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
