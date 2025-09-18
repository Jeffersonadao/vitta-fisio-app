import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitta_fisio/pages/ortopedia/diagnostico_tratamento.dart';
import 'package:vitta_fisio/widgets/decoracao_campo_form.dart';
import 'package:vitta_fisio/widgets/gradientBackgroud.dart';

class TestesEspeciais extends StatefulWidget {
  const TestesEspeciais({super.key});

  @override
  State<TestesEspeciais> createState() => _TestesEspeciaisState();
}

class _TestesEspeciaisState extends State<TestesEspeciais> {
  String? lachman;
  String? mcMurray;
  String? neer;
  String? phalen;
  String? outrosTestes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          children: [Text('Exame Físico'), Text('Testes Especiais')],
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
                      const SizedBox(height: 20),
                      getRadioFieldDecoration(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Testes Especiais (selecione o resultado):',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),

                            RichText(
                              text: TextSpan(
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: '(✓) ',
                                    style: const TextStyle(color: Colors.green),
                                  ),
                                  const TextSpan(text: 'Positivo, '),

                                  TextSpan(
                                    text: '(-) ',
                                    style: const TextStyle(color: Colors.red),
                                  ),
                                  const TextSpan(text: 'Negativo, '),

                                  TextSpan(
                                    text: '(x) ',
                                    style: TextStyle(
                                      color: Colors.orange.shade700,
                                    ),
                                  ),
                                  const TextSpan(text: 'Não realizado'),
                                ],
                              ),
                            ),

                            const SizedBox(height: 15),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Lachman
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Teste de Lachman: "),
                                    Row(
                                      children: [
                                        Radio<String>(
                                          value: "Positivo",
                                          groupValue: lachman,
                                          onChanged: (value) {
                                            setState(() {
                                              lachman = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "✓",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Radio<String>(
                                          value: "Negativo",
                                          groupValue: lachman,
                                          onChanged: (value) {
                                            setState(() {
                                              lachman = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "-",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Radio<String>(
                                          value: "Não realizado",
                                          groupValue: lachman,
                                          onChanged: (value) {
                                            setState(() {
                                              lachman = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "x",
                                          style: TextStyle(
                                            color: Colors.orange.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Teste de McMurray: "),
                                    Row(
                                      children: [
                                        Radio<String>(
                                          value: "Positivo",
                                          groupValue: mcMurray,
                                          onChanged: (value) {
                                            setState(() {
                                              mcMurray = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "✓",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Radio<String>(
                                          value: "Negativo",
                                          groupValue: mcMurray,
                                          onChanged: (value) {
                                            setState(() {
                                              mcMurray = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "-",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Radio<String>(
                                          value: "Não realizado",
                                          groupValue: mcMurray,
                                          onChanged: (value) {
                                            setState(() {
                                              mcMurray = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "x",
                                          style: TextStyle(
                                            color: Colors.orange.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Teste de Neer: "),
                                    Row(
                                      children: [
                                        Radio<String>(
                                          value: "Positivo",
                                          groupValue: neer,
                                          onChanged: (value) {
                                            setState(() {
                                              neer = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "✓",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Radio<String>(
                                          value: "Negativo",
                                          groupValue: neer,
                                          onChanged: (value) {
                                            setState(() {
                                              neer = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "-",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Radio<String>(
                                          value: "Não realizado",
                                          groupValue: neer,
                                          onChanged: (value) {
                                            setState(() {
                                              neer = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "x",
                                          style: TextStyle(
                                            color: Colors.orange.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Teste de Phalen: "),
                                    Row(
                                      children: [
                                        Radio<String>(
                                          value: "Positivo",
                                          groupValue: phalen,
                                          onChanged: (value) {
                                            setState(() {
                                              phalen = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "✓",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Radio<String>(
                                          value: "Negativo",
                                          groupValue: phalen,
                                          onChanged: (value) {
                                            setState(() {
                                              phalen = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "-",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Radio<String>(
                                          value: "Não realizado",
                                          groupValue: phalen,
                                          onChanged: (value) {
                                            setState(() {
                                              phalen = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "x",
                                          style: TextStyle(
                                            color: Colors.orange.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Outros Testes : "),
                                    Row(
                                      children: [
                                        Radio<String>(
                                          value: "Positivo",
                                          groupValue: outrosTestes,
                                          onChanged: (value) {
                                            setState(() {
                                              outrosTestes = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "✓",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        Radio<String>(
                                          value: "Negativo",
                                          groupValue: outrosTestes,
                                          onChanged: (value) {
                                            setState(() {
                                              outrosTestes = value;
                                            });
                                          },
                                        ),
                                        const Text(
                                          "-",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Radio<String>(
                                          value: "Não realizado",
                                          groupValue: outrosTestes,
                                          onChanged: (value) {
                                            setState(() {
                                              outrosTestes = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "x",
                                          style: TextStyle(
                                            color: Colors.orange.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                // Campo de descrição
                                if (outrosTestes == "Positivo")
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: "Descreva :",
                                      ),
                                    ),
                                  ),
                              ],
                            ),

                            const SizedBox(height: 10),
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
                    Get.to(() => DiagnosticoETratamento());
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
