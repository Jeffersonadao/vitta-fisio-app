import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitta_fisio/pages/ortopedia/orto_palpacao_page_.dart';
import 'package:vitta_fisio/widgets/decoracao_campo_form.dart';
import 'package:vitta_fisio/widgets/gradientBackgroud.dart';

class OrtoInspecaoPage extends StatefulWidget {
  const OrtoInspecaoPage({super.key});

  @override
  State<OrtoInspecaoPage> createState() => _OrtoInspecaoPageState();
}

class _OrtoInspecaoPageState extends State<OrtoInspecaoPage> {
  bool edema = false;
  bool equimose = false;
  bool cicatrizes = false;
  bool deformidades = false;
  bool outrosInspecao = false;

  String? postura;
  String? marcha;
  String? simetria;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(children: [Text('Exame Físico'), Text('Inspeção')]),
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
                            Text('Postura e alinhamento corporal:'),

                            SizedBox(height: 15),

                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'anterior Normal',
                                      groupValue: postura,
                                      onChanged: (valor) {
                                        setState(() {
                                          postura = valor;
                                        });
                                      },
                                    ),

                                    Text('Anterior Normal'),
                                  ],
                                ),

                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'Anterior alterada',
                                      groupValue: postura,
                                      onChanged: (valor) {
                                        setState(() {
                                          postura = valor;
                                        });
                                      },
                                    ),
                                    Text('Anterior Alterada'),
                                  ],
                                ),

                                SizedBox(height: 15),

                                TextFormField(
                                  decoration: getFormDecoration('Descreva:'),
                                ),

                                SizedBox(height: 10),
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
                            Text('Marcha e padrão de movimento :'),

                            SizedBox(height: 15),

                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'Marcha normal',
                                      groupValue: marcha,
                                      onChanged: (valor) {
                                        setState(() {
                                          marcha = valor!;
                                        });
                                      },
                                    ),
                                    Text('Normal'),
                                  ],
                                ),

                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'Marcha alterado',
                                      groupValue: marcha,
                                      onChanged: (valor) {
                                        setState(() {
                                          marcha = valor!;
                                        });
                                      },
                                    ),
                                    Text('Alterado'),
                                  ],
                                ),

                                SizedBox(height: 15),

                                TextFormField(
                                  decoration: getFormDecoration('Descreva:'),
                                ),

                                SizedBox(height: 10),
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
                            Text('Simetria e atrofia muscular:'),

                            SizedBox(height: 15),

                            Wrap(
                              spacing: 10,
                              runSpacing: 8,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'Simétrico',
                                      groupValue: simetria,
                                      onChanged: (valor) {
                                        setState(() {
                                          simetria = valor!;
                                        });
                                      },
                                    ),
                                    Text('Simétrico'),
                                  ],
                                ),

                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Radio<String>(
                                      value: 'Assimétrico',
                                      groupValue: simetria,
                                      onChanged: (valor) {
                                        setState(() {
                                          simetria = valor!;
                                        });
                                      },
                                    ),
                                    Text('Assimétrico'),
                                  ],
                                ),

                                SizedBox(height: 15),

                                TextFormField(
                                  decoration: getFormDecoration('Descreva:'),
                                ),

                                SizedBox(height: 10),
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
                            Row(
                              children: [
                                Checkbox(
                                  value: edema,
                                  onChanged: (valor) {
                                    setState(() {
                                      edema = valor!;
                                    });
                                  },
                                ),
                                Text('Edema(Inchaço)'),
                              ],
                            ),

                            SizedBox(height: 15),

                            TextFormField(
                              decoration: InputDecoration(
                                label: Text('Descreva:'),
                              ),
                            ),

                            SizedBox(height: 15),

                            Divider(
                              color: Colors.black,
                              height: 10,
                              thickness: 5,
                            ),

                            SizedBox(height: 15),

                            Row(
                              children: [
                                Checkbox(
                                  value: equimose,
                                  onChanged: (valor) {
                                    setState(() {
                                      equimose = valor!;
                                    });
                                  },
                                ),
                                Text('Equimose(Manchas roxas)'),
                              ],
                            ),

                            SizedBox(height: 15),

                            TextFormField(
                              decoration: InputDecoration(
                                label: Text('Descreva:'),
                              ),
                            ),

                            SizedBox(height: 15),

                            Divider(
                              color: Colors.black,
                              height: 10,
                              thickness: 5,
                            ),

                            SizedBox(height: 15),

                            Row(
                              children: [
                                Checkbox(
                                  value: cicatrizes,
                                  onChanged: (valor) {
                                    setState(() {
                                      cicatrizes = valor!;
                                    });
                                  },
                                ),
                                Text('Cicatrizes'),
                              ],
                            ),

                            SizedBox(height: 15),

                            TextFormField(
                              decoration: InputDecoration(
                                label: Text('Descreva:'),
                              ),
                            ),

                            SizedBox(height: 15),

                            Divider(
                              color: Colors.black,
                              height: 10,
                              thickness: 5,
                            ),

                            SizedBox(height: 15),

                            Row(
                              children: [
                                Checkbox(
                                  value: deformidades,
                                  onChanged: (valor) {
                                    setState(() {
                                      deformidades = valor!;
                                    });
                                  },
                                ),
                                Text('Deformidades'),
                              ],
                            ),

                            SizedBox(height: 15),

                            TextFormField(
                              decoration: InputDecoration(
                                label: Text('Descreva:'),
                              ),
                            ),

                            SizedBox(height: 15),

                            Divider(
                              color: Colors.black,
                              height: 10,
                              thickness: 5,
                            ),

                            SizedBox(height: 15),

                            Row(
                              children: [
                                Checkbox(
                                  value: outrosInspecao,
                                  onChanged: (valor) {
                                    setState(() {
                                      outrosInspecao = valor!;
                                    });
                                  },
                                ),
                                Text('Outros'),
                              ],
                            ),

                            SizedBox(height: 15),

                            TextFormField(
                              decoration: InputDecoration(
                                label: Text('Descreva:'),
                              ),
                            ),

                            SizedBox(height: 10),
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
                    Get.to(() => OrtoPalpacaoPage());
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
