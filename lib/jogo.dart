import 'package:flutter/material.dart';
import 'package:jakenpo_v2/Jogo.dart';

class Jogo extends StatelessWidget {
  const Jogo({super.key, required MaterialColor backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jokenpo')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: const Text(
              'Escolha do App!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset("imagens/padrao.png"),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: const Text(
              'Escolha uma opção abaixo:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("imagens/pedra.png", height: 95,),
              Image.asset("imagens/papel.png", height: 95,),
              Image.asset("imagens/tesoura.png", height: 95,)
            ],
          )

        ],
      ),
    );
  }
}
