import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationButtons extends StatelessWidget {
  final Widget? paginaAnterior; // página para o botão "Anterior"
  final Widget? proximaPagina; // página para o botão "Próximo"
  final bool mostrarAnterior; // se o botão "Anterior" aparece
  final bool mostrarProximo; // se o botão "Próximo" aparece
  final String textoAnterior; // texto botão anterior
  final String textoProximo; // texto botão próximo
  final VoidCallback? aoClicarAnterior; // ação customizada
  final VoidCallback? aoClicarProximo;

  const NavigationButtons({
    super.key,
    this.paginaAnterior,
    this.proximaPagina,
    required this.mostrarAnterior,
    this.mostrarProximo = true,
    this.textoAnterior = 'Anterior',
    this.textoProximo = 'Próximo',
    this.aoClicarAnterior,
    this.aoClicarProximo,
  });

  @override
  Widget build(BuildContext context) {
    final int botoesVisiveis =
        (mostrarAnterior ? 1 : 0) + (mostrarProximo ? 1 : 0);

    return Row(
      mainAxisAlignment:
          botoesVisiveis == 1
              ? MainAxisAlignment
                  .end // se só tiver 1 botão, joga pro lado direito
              : MainAxisAlignment
                  .spaceBetween, // se tiver os 2, mantém espaçamento
      children: [
        if (mostrarAnterior)
          TextButton(
            onPressed: () {
              if (aoClicarAnterior != null) {
                aoClicarAnterior!();
              } else if (paginaAnterior != null) {
                Get.to(() => paginaAnterior!);
              } else {
                Get.back();
              }
            },
            child: Text(
              textoAnterior,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        if (mostrarProximo)
          TextButton(
            onPressed: () {
              if (aoClicarProximo != null) {
                aoClicarProximo!();
              } else if (proximaPagina != null) {
                Get.to(() => proximaPagina!);
              }
            },
            child: Text(
              textoProximo,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
      ],
    );
  }
}
