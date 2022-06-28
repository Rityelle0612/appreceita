
import 'package:appdereceita/pages/exemplo.dart';
import 'package:appdereceita/wigdet/cardReceita.dart';
import 'package:flutter/material.dart';

import 'buscar.dart';


//luiza

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          backgroundColor: Color(0xFFB98671),
          elevation: 10,
          title: Image.asset('imagens/logo.png'),
          actions: [
            ElevatedButton.icon(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return const buscar();
                    },
                  ),
                );
                print("You pressed Icon Elevated Button");
              },
              icon: Icon(Icons.search, color: Color(0xFF8B6455), size: 40),  //icon data for elevated button
              label: Text(""),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFB98671),
                elevation: 0,
              ),//label text
            ),
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16),

            Center(
              child:  buildImage(context),
            ),
            const SizedBox(height: 16),
            Divider(color: Colors.grey[300]),
            const SizedBox(height: 16),
            const Text(
              'Mais acessados',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF9C4830),
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 16),
            Container(
              height: 192,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                    ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                    ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                    ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                    ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                    ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                  ],
                ),
            ),

            const SizedBox(height: 16),
            Divider(color: Colors.grey[300]),
            const SizedBox(height: 16),
            const Text(
                'Recentes',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF9C4830),
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 16),
            Container(
              height: 192,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                  ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                  ReceitaCard(imagem: 'imagens/file.png', titulo: 'Filé a Parmegiana'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buildImage(context){
  return Stack(
    children: [
      Container(
        height: 250,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          child: Image.asset('imagens/bolodecenoura.png', fit: BoxFit.fitHeight),
        ),
      ),
      Positioned(
        bottom: 45,
        left: 16,
        child: Container(
          child: const Text(
            'Bolo de Cenoura',
            style: TextStyle(
              color: Color(0xFFE4DDDD),
              fontSize: 30,
              fontWeight: FontWeight.normal
            ),
          )
        ),
      ),
      Positioned(
        bottom: 8,
        left: 10,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                        return const exemplo();
                      },
                  ),
              );
            },
            child: const Text(
              'Saiba mais',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color(0xFFE4DDDD),
              ),
            ),
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent
          ),
        ),
      ),
    ],
  );
}

