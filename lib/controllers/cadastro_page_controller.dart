import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroPageController extends GetxController {
  var nome = ''.obs;
  var dataNascimento = ''.obs;
  var genero = ''.obs;
  var telefone = ''.obs;
  var profissao = ''.obs;
  var rua = ''.obs;
  var numero = ''.obs;
  var complemento = ''.obs;
  var responsavel = ''.obs;

  final formKey = GlobalKey<FormState>();
}
