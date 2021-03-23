import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF69383),
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.school_outlined),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Ulbra - Universidade Luterana do Brasil',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-25, 0),
                child: Text('2010', style: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 55),
                child: Text(
                  'Analise e Desenvolvimento de Sistemas',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
            ListTile(
              leading: Icon(Icons.auto_stories),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Instituto Barão de Tramandaí',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-25, 0),
                child: Text('2000', style: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 55),
                child: Text(
                  'Ensino Médio',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
            ListTile(
              leading: Icon(Icons.chat_bubble_outline_outlined),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Idiomas',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
              subtitle: Transform.translate(
                offset: Offset(-25, 0),
                child: Text('2019', style: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                child: const Text(
                  'Inglês (Intermediário) - NED Training Center - Dublin / Irlanda',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                child: const Text(
                  'Cambridge English Entry Level Certificate in ESOL International- PET',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
            ListTile(
              leading: Icon(Icons.batch_prediction_outlined),
              title: Transform.translate(
                offset: Offset(-25, 0),
                child: Text(
                  'Competências',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: const Text(
                  '''
        Boa Comunicação
        Flexibilidade
        Capacidade de Análise
        Espírito de Equipe
        Gerenciamento de tempo
        Capacidade de adaptação
        Resolução de Problemas
''',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
