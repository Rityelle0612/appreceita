import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class exemplo extends StatefulWidget {
  const exemplo({Key? key}) : super(key: key);

  @override
  State<exemplo> createState() => _exemploState();
}

class _exemploState extends State<exemplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xFFB98671),
        elevation: 10,
        actions: [Image.asset('imagens/logo.png')],
      ),
      body: ListView(
        children: [
          Container(
            height: 230,
            margin: EdgeInsets.all(16),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Image.asset('imagens/bolodecenoura.png', fit: BoxFit.fitHeight),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                       'Bolo de Cenoura',
                        style: TextStyle(
                            color: Color(0xFF9C4830),
                            fontSize: 30,
                            fontWeight: FontWeight.normal
                        ),
                    ),

                    Row(
                      children: [
                        Icon(Icons.share, color: Color(0xFF9C4830), size: 30,),
                        Icon(Icons.heart_broken_outlined, color: Color(0xFF9C4830), size: 30,),
                      ],
                    )
                  ],
                ),

                SizedBox(height: 12,),

                Row(
                  children: [
                    Image.asset('imagens/relogio.png'),
                    SizedBox(width: 10,),
                    Text(
                      '40 min',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF76503B),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 5,),

                Row(
                  children: [
                    Image.asset('imagens/bandeja.png'),
                    SizedBox(width: 7,),
                    Text(
                      '8 porções',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF76503B),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),
                Divider(color: Colors.grey[300]),
                const SizedBox(height: 16),


                Text(
                  'Ingredientes',
                  style: TextStyle(
                    color: Color(0xFF9C4830),
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 7,),
                Text(
                  '- 1/2 xícara (chá) de óleo\n- 3 cenouras médias raladas\n- 4 ovos\n- 2 xícaras (chá) de açúcar\n- 2 e 1/2 xícaras (chá) de farinha de trigo\n- 1 colher (sopa) de fermento em pó',
                  style: TextStyle(
                    color: Color(0xFF76503B),
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 16),
                Divider(color: Colors.grey[300]),
                const SizedBox(height: 16),
                
                Text(
                    'Modo de Fazer',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF9C4830),
                  ),
                ),
                SizedBox(height: 7,),
                Text(
                  '- Em um liquidificador, adicione a cenoura, os ovos e o óleo, depois misture.\n- Acrescente o açúcar e bata novamente por 5 minutos.\n- Em uma tigela ou na batedeira, adicione a farinha de trigo e depois misture novamente.\n- Acrescente o fermento e misture lentamente com uma colher.\n- Asse em um forno preaquecido a 180° C por aproximadamente 40 minutos.',
                  style: TextStyle(
                    color: Color(0xFF76503B),
                    fontSize: 20,

                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
