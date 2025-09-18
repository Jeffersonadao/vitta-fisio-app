import 'package:brasil_fields/brasil_fields.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vitta_fisio/pages/geriatria/geri_page_1.dart';
import 'package:vitta_fisio/pages/neurofuncional/neuro_page_1.dart';
import 'package:vitta_fisio/pages/ortopedia/orto_inspecao_page.dart';
import 'package:vitta_fisio/widgets/decoracao_campo_form.dart';
import 'package:vitta_fisio/widgets/gradientBackgroud.dart';

class DiagnosticoETratamento extends StatefulWidget {
  const DiagnosticoETratamento({super.key});

  @override
  State<DiagnosticoETratamento> createState() => _DiagnosticoETratamentoState();
}

class _DiagnosticoETratamentoState extends State<DiagnosticoETratamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Diagnóstico e tratamento'),
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
                        decoration: getFormDecoration('Diagnóstico Clínico :'),
                        keyboardType: TextInputType.multiline,
                        minLines: 5,
                        maxLines: null,
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        decoration: getFormDecoration('Plano de tratamento:'),
                        keyboardType: TextInputType.multiline,
                        minLines: 5,
                        maxLines: null,
                      ),
                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration(
                          'Objetivos do tratamento:',
                        ),
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: null,
                      ),

                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration(
                          'Intervenções fisioterapêuticas propostas:',
                        ),
                        keyboardType: TextInputType.multiline,
                        minLines: 3,
                        maxLines: null,
                      ),

                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration(
                          'Frequência e duração esperadas das sessões de tratamento:',
                        ),
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: null,
                      ),

                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration(
                          'Educação do paciente sobre autocuidado e prevenção de lesões:',
                        ),
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: null,
                      ),

                      SizedBox(height: 15),

                      TextFormField(
                        decoration: getFormDecoration(
                          'Encaminhamento para outros profissionais de saúde, se necessário:',
                        ),
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: null,
                      ),

                      SizedBox(height: 15),
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
                  onPressed: () {},
                  child: Text(
                    'Salvar',
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
