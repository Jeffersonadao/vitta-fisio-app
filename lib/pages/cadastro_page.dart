import 'package:brasil_fields/brasil_fields.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vitta_fisio/controllers/cadastro_page_controller.dart';
import 'package:vitta_fisio/pages/anamnese.dart';
import 'package:vitta_fisio/widgets/decoracao_campo_form.dart';
import 'package:vitta_fisio/widgets/gradientBackgroud.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool cadastrando = true;
  String? _generoSelecionado;

  final CadastroPageController controller = Get.put(CadastroPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            (cadastrando == false)
                ? Text('Editar Paciente')
                : Text('Cadastro de Paciente'),
      ),
      body: GradientBackground(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    children: [
                      Image.asset('assets/logo.png', width: 150),
                      //Icon(Icons.person_outline, size: 150),
                      TextFormField(
                        decoration: getFormDecoration('Nome Completo'),
                        onChanged: (value) => controller.nome.value = value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira o nome';
                          }
                          return null;
                        },
                      ),

                      SizedBox(height: 16),
                      TextFormField(
                        decoration: getFormDecoration('Data de Nascimento'),
                        keyboardType: TextInputType.number,
                        inputFormatters: [DataInputFormatter()],
                        onChanged:
                            (value) => controller.dataNascimento.value = value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, insira a data de nascimento';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15),

                      Row(
                        children: [
                          Container(
                            decoration: getDropDownStyle(),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: _generoSelecionado,
                                hint: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: Text('Selecione o gênero'),
                                ),
                                icon: const Icon(Icons.arrow_drop_down),
                                isExpanded: false,
                                alignment: AlignmentDirectional.centerStart,
                                items: [
                                  DropdownMenuItem(
                                    value: 'Masculino',
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      child: Text('Masculino'),
                                    ),
                                  ),

                                  DropdownMenuItem<String>(
                                    enabled: false,
                                    child: Container(
                                      height: 1,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 4,
                                      ),
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Feminino',
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      child: Text('Feminino'),
                                    ),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _generoSelecionado = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),
                      TextFormField(
                        decoration: getFormDecoration('(xx) xxxxx-xxxx'),
                        keyboardType: TextInputType.number,
                        inputFormatters: [TelefoneInputFormatter()],
                      ),

                      SizedBox(height: 15),
                      TextFormField(decoration: getFormDecoration('Profissão')),
                      SizedBox(height: 16),

                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextFormField(
                              decoration: getFormDecoration('Rua, Av., etc.'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              decoration: getFormDecoration('Nº'),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),

                      TextFormField(
                        decoration: getFormDecoration('Complemento (opcional)'),
                      ),

                      SizedBox(height: 15),
                      TextFormField(
                        decoration: getFormDecoration(
                          'Nome do Responsável (Se Aplicável)',
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Get.to(() => const Anamnese());
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
