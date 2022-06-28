import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../wigdet/cardReceita.dart';

class buscar extends StatefulWidget {
  const buscar ({Key? key}) : super(key: key);

  @override
  _buscarState createState() => _buscarState();

}

class _buscarState extends State<buscar> {

  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFFB98671),
        actions: [
          Image.asset('imagens/logo.png'),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(
            children: [
              TextField(
                controller: _controller,
                maxLines: 1,
                decoration: InputDecoration(
                  fillColor: Colors.grey[80], filled: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  labelText: "Buscar",
                  labelStyle: TextStyle(
                    color: Colors.black12,
                  ),
                  hintText: "O que você está procurando?",
                  hintStyle: TextStyle(
                    color: Colors.black12,
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  suffix: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: _controller.clear,
                  ),
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              Divider(color: Colors.grey[300]),
              const SizedBox(height: 16),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                      ReceitaCard(imagem: 'imagens/pudim.png', titulo: '        Pudim         '),
                    ],
                  ),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ReceitaCard(imagem: 'imagens/Cafe.png', titulo: '  Café Cremoso   '),
                      ReceitaCard(imagem: 'imagens/strogonoff.png', titulo: '       Stronogoff      '),
                    ],
                  ),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ReceitaCard(imagem: 'imagens/brigadeiro.png', titulo: '      Brigadeiro    '),
                      ReceitaCard(imagem: 'imagens/chocolate-quente.png', titulo: 'Chocolate Quente'),
                    ],
                  ),
                ],
              ),
            ]
        ),
      ),

    );
  }
}