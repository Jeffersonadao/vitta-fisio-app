import 'package:brasil_fields/brasil_fields.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vitta_fisio/pages/geriatria/geri_page_1.dart';
import 'package:vitta_fisio/pages/neurofuncional/neuro_page_1.dart';
import 'package:vitta_fisio/pages/ortopedia/orto_inspecao_page.dart';
import 'package:vitta_fisio/widgets/decoracao_campo_form.dart';
import 'package:vitta_fisio/widgets/gradientBackgroud.dart';

class Anamnese extends StatefulWidget {
  const Anamnese({super.key});

  @override
  State<Anamnese> createState() => _AnamneseState();
}

class _AnamneseState extends State<Anamnese> {
  bool cadastrando = true;

  String? _especialidadeSelecionada;

  bool hasSelecionado = false;
  bool iamSelecionado = false;
  bool icSelecionado = false;
  bool dpocSelecionado = false;
  bool asmaSelecionado = false;
  bool dmSelecionado = false;
  bool outrasCardioRespiratorio = false;
  bool outrasEsqueletico = false;
  bool enfermidadesNeurologicas = false;
  bool outrasInfermidades = false;

  bool bursiteSelecionado = false;
  bool tendiniteSelecionado = false;
  bool reumatismoSelecionado = false;
  bool artroseSelecionado = false;
  bool avcSelecionado = false;
  bool trmSelecionado = false;
  bool tceSelecionado = false;

  String outrasDescricao = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            (cadastrando == false)
                ? Column(
                  children: [
                    Text('Cadastro Paciente'),
                    Text('Editar Paciente'),
                  ],
                )
                : Column(
                  children: [Text('Cadastro Paciente'), Text('Anamnese')],
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
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: getFormDecoration('Queixa Principal'),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        decoration: getFormDecoration('Diagnóstico Clinico'),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          DataInputFormatter(),
                        ],
                      ),
                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration(
                          'HDA (história da doença atual)',
                        ),
                        keyboardType: TextInputType.multiline,
                        minLines: 3,
                        maxLines: null,
                      ),

                      SizedBox(height: 15),

                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "HPP (história de doença pregressa)/comorbidades:",
                            ),
                            const SizedBox(height: 10),

                            // Linha 1: HAS IAM IC
                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: hasSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => hasSelecionado = v!,
                                          ),
                                    ),
                                    const Text("HAS"),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: iamSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => iamSelecionado = v!,
                                          ),
                                    ),
                                    const Text("IAM"),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: icSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => icSelecionado = v!,
                                          ),
                                    ),
                                    const Text("IC"),
                                  ],
                                ),
                              ],
                            ),

                            const SizedBox(height: 8),

                            // Linha 2: DPOC ASMA DM
                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: dpocSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => dpocSelecionado = v!,
                                          ),
                                    ),
                                    const Text("DPOC"),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: asmaSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => asmaSelecionado = v!,
                                          ),
                                    ),
                                    const Text("Asma"),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: dmSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => dmSelecionado = v!,
                                          ),
                                    ),
                                    const Text("DM"),
                                  ],
                                ),
                              ],
                            ),

                            const SizedBox(height: 8),

                            // Linha 3: Outras doenças cardiorrespiratórias
                            InkWell(
                              onTap: () {
                                setState(() {
                                  outrasCardioRespiratorio =
                                      !outrasCardioRespiratorio;
                                });
                              },
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: outrasCardioRespiratorio,
                                    onChanged:
                                        (v) => setState(
                                          () => outrasCardioRespiratorio = v!,
                                        ),
                                  ),
                                  const Text(
                                    "Outras doenças cardiorrespiratórias:",
                                  ),
                                ],
                              ),
                            ),

                            // Campo de descrição abaixo
                            if (outrasCardioRespiratorio)
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: TextFormField(
                                  enabled: outrasCardioRespiratorio,
                                  decoration: getFormDecoration("Descreva"),
                                  onChanged: (v) => outrasDescricao = v,
                                ),
                              ),

                            SizedBox(height: 10),

                            Divider(
                              color: Colors.black,
                              height: 10,
                              thickness: 3,
                            ),

                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: bursiteSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => bursiteSelecionado = v!,
                                          ),
                                    ),
                                    const Text("Bursite"),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: tendiniteSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => tendiniteSelecionado = v!,
                                          ),
                                    ),
                                    const Text("Tendinite"),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: reumatismoSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => reumatismoSelecionado = v!,
                                          ),
                                    ),
                                    const Text("Reumatismo"),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Checkbox(
                                      value: artroseSelecionado,
                                      onChanged:
                                          (v) => setState(
                                            () => artroseSelecionado = v!,
                                          ),
                                    ),
                                    const Text("Artrose"),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      outrasEsqueletico = !outrasEsqueletico;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: outrasEsqueletico,
                                        onChanged:
                                            (v) => setState(
                                              () => outrasEsqueletico = v!,
                                            ),
                                      ),
                                      const Text(
                                        "Enfermidades Músculo-esqueléticas:",
                                      ),
                                    ],
                                  ),
                                ),
                                if (outrasEsqueletico)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40.0),
                                    child: TextFormField(
                                      enabled: outrasEsqueletico,
                                      decoration: getFormDecoration("Descreva"),
                                      onChanged: (v) => outrasDescricao = v,
                                    ),
                                  ),

                                SizedBox(height: 10),

                                Divider(
                                  color: Colors.black,
                                  height: 10,
                                  thickness: 3,
                                ),

                                Wrap(
                                  spacing: 10,
                                  runSpacing: 8,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Checkbox(
                                          value: avcSelecionado,
                                          onChanged:
                                              (v) => setState(
                                                () => avcSelecionado = v!,
                                              ),
                                        ),
                                        const Text("AVC"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Checkbox(
                                          value: trmSelecionado,
                                          onChanged:
                                              (v) => setState(
                                                () => trmSelecionado = v!,
                                              ),
                                        ),
                                        const Text("TRM"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Checkbox(
                                          value: tceSelecionado,
                                          onChanged:
                                              (v) => setState(
                                                () => tceSelecionado = v!,
                                              ),
                                        ),
                                        const Text("TCE"),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          enfermidadesNeurologicas =
                                              !enfermidadesNeurologicas;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: enfermidadesNeurologicas,
                                            onChanged:
                                                (v) => setState(
                                                  () =>
                                                      enfermidadesNeurologicas =
                                                          v!,
                                                ),
                                          ),
                                          const Text(
                                            "Enfermidades Neurológicas:",
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (enfermidadesNeurologicas)
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 40.0,
                                        ),
                                        child: TextFormField(
                                          enabled: enfermidadesNeurologicas,
                                          decoration: getFormDecoration(
                                            "Descreva",
                                          ),
                                          onChanged: (v) => outrasDescricao = v,
                                        ),
                                      ),
                                  ],
                                ),

                                const SizedBox(height: 8),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration('História social'),
                      ),

                      SizedBox(height: 15),
                      TextFormField(
                        decoration: getFormDecoration('História familiar'),
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: null,
                      ),

                      SizedBox(height: 15),
                      TextFormField(decoration: getFormDecoration('Cirurgias')),

                      SizedBox(height: 15),
                      TextFormField(decoration: getFormDecoration('Alergias')),
                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration(
                          'Tratamento medicamentoso',
                        ),
                      ),
                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration('exames complementares'),
                      ),
                      SizedBox(height: 15),

                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sinais Vitais :'),
                            SizedBox(height: 10),
                            // Linha P.A
                            Row(
                              children: [
                                const SizedBox(width: 50, child: Text('P.A :')),
                                SizedBox(
                                  width: 160,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      TextInputFormatter.withFunction((
                                        oldValue,
                                        newValue,
                                      ) {
                                        String text = newValue.text;

                                        if (text.isEmpty) return newValue;

                                        if (text.length > 2) {
                                          String formatted =
                                              text.substring(
                                                0,
                                                text.length - 2,
                                              ) +
                                              'x' +
                                              text.substring(text.length - 2);
                                          formatted += ' mmHg';
                                          return TextEditingValue(
                                            text: formatted,
                                            selection: TextSelection.collapsed(
                                              offset: formatted.length - 5,
                                            ),
                                          );
                                        }

                                        return newValue;
                                      }),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 15),

                            // Linha SpO2
                            Row(
                              children: [
                                const SizedBox(
                                  width: 50,
                                  child: Text('SpO2 :'),
                                ),
                                SizedBox(
                                  width: 160,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      TextInputFormatter.withFunction((
                                        oldValue,
                                        newValue,
                                      ) {
                                        if (newValue.text.isEmpty)
                                          return newValue;
                                        return newValue.copyWith(
                                          text: '${newValue.text}%',
                                        );
                                      }),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 15),

                            // Linha F.C
                            Row(
                              children: [
                                const SizedBox(width: 50, child: Text('F.C :')),
                                SizedBox(
                                  width: 160,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      TextInputFormatter.withFunction((
                                        oldValue,
                                        newValue,
                                      ) {
                                        if (newValue.text.isEmpty)
                                          return newValue;
                                        return newValue.copyWith(
                                          text: '${newValue.text} BPM',
                                        );
                                      }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),

                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Especialidade:'),
                            RadioListTile<String>(
                              title: const Text('Geriatria'),
                              value: 'Geriatria',
                              groupValue: _especialidadeSelecionada,
                              onChanged: (value) {
                                setState(() {
                                  _especialidadeSelecionada = value!;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text('Ortopedia'),
                              value: 'Ortopedia',
                              groupValue: _especialidadeSelecionada,
                              onChanged: (value) {
                                setState(() {
                                  _especialidadeSelecionada = value!;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              title: const Text('Neurofuncional'),
                              value: 'Neurofuncional',
                              groupValue: _especialidadeSelecionada,
                              onChanged: (value) {
                                setState(() {
                                  _especialidadeSelecionada = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  if (_especialidadeSelecionada == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Selecione a especialidade!')),
                    );
                    return;
                  }

                  switch (_especialidadeSelecionada) {
                    case 'Geriatria':
                      Get.to(() => const GeriPage1());
                      break;
                    case 'Ortopedia':
                      Get.to(() => const OrtoInspecaoPage());
                      break;
                    case 'Neurofuncional':
                      Get.to(() => const NeuroPage1());
                      break;
                  }
                },
                child: Text(
                  'Próximo',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
