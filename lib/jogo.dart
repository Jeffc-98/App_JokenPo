import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("imagens/padrao.png");
  var _mensagem = "Escolha uma opção abaixo!";

  void _opcqoSelecionada(String escolhaUsuario) {
    var opcao = ["Pedra", "Papel", "Tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcao[numero];

    switch (escolhaApp) {
      case "Pedra":
        setState(() {
          _imagemApp = AssetImage("imagens/pedra.png");
        });
        break;
      case "Papel":
        setState(() {
          _imagemApp = AssetImage("imagens/papel.png");
        });
        break;

      case "Tesoura":
        setState(() {
          _imagemApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }
    if (escolhaUsuario == "Pedra" && escolhaApp == "Tesoura" ||
        escolhaUsuario == "Tesoura" && escolhaApp == "Papel" ||
        escolhaUsuario == "Papel" && escolhaApp == "Pedra") {
      setState(() {
        _mensagem = "Você ganhou";
      });
    } else if (escolhaApp == "Pedra" && escolhaUsuario == "Tesoura" ||
        escolhaApp == "Tesoura" && escolhaUsuario == "Papel" ||
        escolhaApp == "Papel" && escolhaUsuario == "Pedra") {
      setState(() {
        _mensagem = "Você perdeu!";
      });
    } else {
      setState(() {
        _mensagem = "Empatamos!";
      });
    }
  }

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
          Image(image: _imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => _opcqoSelecionada("Pedra"),
                child: Image.asset("imagens/pedra.png", height: 95),
              ),
              GestureDetector(
                onTap: () => _opcqoSelecionada("Papel"),
                child: Image.asset("imagens/papel.png", height: 95),
              ),
              GestureDetector(
                onTap: () => _opcqoSelecionada("Tesoura"),
                child: Image.asset("imagens/tesoura.png", height: 95),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
